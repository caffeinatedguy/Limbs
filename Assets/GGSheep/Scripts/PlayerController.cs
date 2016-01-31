using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour 
{
	// Require a character controller to be attached to the same game object
	//@script RequireComponent(CharacterController)

	public Player _player;

	public AnimationClip idleAnimation;
	public AnimationClip walkAnimation;
	public AnimationClip runAnimation;
	public AnimationClip jumpPoseAnimation;
	
	public float walkMaxAnimationSpeed = 0.75f;
	public float trotMaxAnimationSpeed = 1.0f;
	public float runMaxAnimationSpeed = 1.0f;
	public float jumpAnimationSpeed = 1.15f;
	public float landAnimationSpeed = 1.0f;
	
	private Animation _animation;
	
	enum CharacterState {
		Idle = 0,
		Walking = 1,
		Trotting = 2,
		Running = 3,
		Jumping = 4,
	}

	private CharacterState _characterState;
	
	// The speed when walking
	public float walkSpeed= 2.0f;
	// after trotAfterSeconds of walking we trot with trotSpeed
	public float trotSpeed= 4.0f;
	// when pressing "Fire3" button (cmd) we start running
	public float runSpeed= 6.0f;
	
	public float inAirControlAcceleration= 3.0f;
	
	// How high do we jump when pressing jump and letting go immediately
	public float jumpHeight= 0.5f;
	
	// The gravity for the character
	public float gravity= 20.0f;
	// The gravity in controlled descent mode
	public float speedSmoothing= 10.0f;
	public float rotateSpeed= 500.0f;
	public float trotAfterSeconds= 3.0f;
	
	public bool canJump= true;
	
	private float jumpRepeatTime= 0.05f;
	private float jumpTimeout= 0.15f;
	private float groundedTimeout= 0.25f;
	
	// The camera doesnt start following the target immediately but waits for a split second to avoid too much waving around.
	private float lockCameraTimer= 0.0f;
	
	// The current move direction in x-z
	private Vector3 moveDirection= Vector3.zero;
	// The current vertical speed
	private float verticalSpeed= 0.0f;
	// The current x-z move speed
	private float moveSpeed= 0.0f;
	
	// The last collision flags returned from controller.Move
	private CollisionFlags collisionFlags; 
	
	// Are we jumping? (Initiated with jump button and not grounded yet)
	private bool jumping= false;
	private bool jumpingReachedApex= false;
	
	// Are we moving backwards (This locks the camera to not do a 180 degree spin)
	private bool movingBack= false;
	// Is the user pressing any keys?
	private bool isMoving= false;
	// When did the user start walking (Used for going into trot after a while)
	// Last time the jump button was clicked down
	private float lastJumpButtonTime= -10.0f;
	// Last time we performed a jump
	private float lastJumpTime= -1.0f;
	

	private float lastGroundedTime= 0.0f;



	[SerializeField]
	GameObject[] _limbs;

	[SerializeField]
	Rigidbody[] _moveBodys;

	float _torqValue = 1000.0f;


	void ApplyForce(Vector3 force)
	{
		//Rigidbody[] bodies = GetComponentsInChildren<Rigidbody> ();

		foreach (Rigidbody body in _moveBodys) 
		{	
			body.transform.LookAt (body.transform.position + moveDirection);
			//body.AddTorque (transform.right * Time.deltaTime * _torqValue);
			body.AddForce(force);

			//Debug.Log ("Adding force " + body.name + "_" + force.ToString());
		}
	}
	
	
	private bool isControllable= true;
	
	void  Awake ()
	{
		moveDirection = transform.TransformDirection(Vector3.forward);
	}



	float lastJumpStartHeight = 0;
	
	float GetMovementDirection ()
	{
		Transform cameraTransform= Camera.main.transform;
		bool grounded= IsGrounded();
		
		// Forward vector relative to the camera along the x-z plane	
		Vector3 forward= cameraTransform.TransformDirection(Vector3.forward);
		forward.y = 0;
		forward = forward.normalized;
		
		// Right vector relative to the camera
		// Always orthogonal to the forward vector
		Vector3 right= new Vector3(forward.z, 0, -forward.x);

        float v = Input.GetAxisRaw(Globals.Instance.ManageTeam.GetPlayerAxisName("Vertical", _player.playerId)) + Input.GetAxisRaw("Vertical");
        float h = Input.GetAxisRaw(Globals.Instance.ManageTeam.GetPlayerAxisName("Horizontal", _player.playerId)) + Input.GetAxisRaw("Horizontal");

		
		// Are we moving backwards or looking backwards
		if (v < -0.2f)
			movingBack = true;
		else
			movingBack = false;
		
		bool wasMoving= isMoving;
		isMoving = Mathf.Abs (h) > 0.1f || Mathf.Abs (v) > 0.1f;
		
		// Target direction relative to the camera
		Vector3 targetDirection = h * right + v * forward;

		float targetSpeed = 0;

		
		// Grounded controls
		if (grounded)
		{
			// Lock camera for short period when transitioning moving & standing still
			lockCameraTimer += Time.deltaTime;
			if (isMoving != wasMoving)
				lockCameraTimer = 0.0f;
			
	
			if (targetDirection != Vector3.zero)
			{
				moveDirection = targetDirection.normalized;
			}
			
			targetSpeed = Mathf.Min(targetDirection.magnitude, 1.0f);
			
			_characterState = CharacterState.Walking;


			targetSpeed *= trotSpeed;
			//Debug.Log ("targetSpeed = " + targetSpeed.ToString ());
		}
		// In air controls
		else
		{
			// Lock camera while in air
			if (jumping) 
			{
				lockCameraTimer = 0.0f;
			}
		}

		return targetSpeed;
	}
	
	
	void  ApplyJumping (){
		// Prevent jumping too fast after each other
		if (lastJumpTime + jumpRepeatTime > Time.time)
			return;
		
		if (IsGrounded()) {
			// Jump
			// - Only when pressing the button down
			// - With a timeout so you can press the button slightly before landing		
			if (canJump && Time.time < lastJumpButtonTime + jumpTimeout) {
				verticalSpeed = CalculateJumpVerticalSpeed (jumpHeight);
				SendMessage("DidJump", SendMessageOptions.DontRequireReceiver);
			}
		}
	}
	
	
	void  ApplyGravity ()
	{
		if (isControllable)	// don't move player at all if not controllable.
		{
			// Apply gravity
			//bool jumpButton= Input.GetButton("Jump");
			
			
			// When we reach the apex of the jump we send out a message
			if (jumping && !jumpingReachedApex && verticalSpeed <= 0.0f)
			{
				jumpingReachedApex = true;
				SendMessage("DidJumpReachApex", SendMessageOptions.DontRequireReceiver);
			}
			
			if (IsGrounded ())
				verticalSpeed = 0.0f;
			else
				verticalSpeed -= gravity * Time.deltaTime;
		}
	}
	
	public float CalculateJumpVerticalSpeed ( float targetJumpHeight  )
	{
		// From the jump height and gravity we deduce the upwards speed 
		// for the character to reach at the apex.
		return Mathf.Sqrt(2 * targetJumpHeight * gravity);
	}
	
	public void DidJump ()
	{
		jumping = true;
		jumpingReachedApex = false;
		lastJumpTime = Time.time;
		lastJumpStartHeight = transform.position.y;
		lastJumpButtonTime = -10;
		
		_characterState = CharacterState.Jumping;
	}
	
	void Update ()
	{		
		if (!isControllable)
		{
			// kill all inputs if not controllable.
			Input.ResetInputAxes();
		}
		
		moveSpeed = GetMovementDirection();

		//

		//ApplyGravity();
		
		// Calculate actual motion
		Vector3 movement = moveDirection * moveSpeed + new Vector3 (0, verticalSpeed, 0);
		movement *= Time.deltaTime;


		//movement -= new Vector3 (0.0f, Physics.gravity.y * 0.75f, 0.0f);

		//if(movement.sqrMagnitude > 0.01f)
		//{

			ApplyForce (movement);

			//Debug.Log ("Movement = " + movement.ToString ());
		//}

		foreach (GameObject limb in _limbs) 
		{
			//limb.transform.RotateAround (transform.position, transform.right, 10.1f);
		}



		
		// Move the controller
		//CharacterController controller = GetComponent<CharacterController>();
		//if (movement.sqrMagnitude > 0.01f) 
		//{
		//	controller.transform.LookAt (controller.transform.position + movement);
		//}
		//collisionFlags = controller.Move(movement);




	}

	void LateUpdate()
	{
		
	}
	
	void OnControllerColliderHit ( ControllerColliderHit hit   )
	{
		//	Debug.DrawRay(hit.point, hit.normal);
		if (hit.moveDirection.y > 0.01f) 
			return;
	}
	
	public float GetSpeed ()
	{
		return moveSpeed;
	}
	
	public bool IsJumping ()
	{
		return jumping;
	}
	
	public bool IsGrounded ()
	{
		return true;//(collisionFlags & CollisionFlags.CollidedBelow) != 0;
	}
	
	public Vector3 GetDirection ()
	{
		return moveDirection;
	}
	
	public bool IsMovingBackwards ()
	{
		return movingBack;
	}
	
	public float GetLockCameraTimer ()
	{
		return lockCameraTimer;
	}
	
	public bool IsMoving ()
	{
		return Mathf.Abs(Input.GetAxisRaw("Vertical")) + Mathf.Abs(Input.GetAxisRaw("Horizontal")) > 0.5f;
	}
	
	public bool HasJumpReachedApex ()
	{
		return jumpingReachedApex;
	}
	
	public bool IsGroundedWithTimeout ()
	{
		return lastGroundedTime + groundedTimeout > Time.time;
	}
	
	public void Reset ()
	{
		gameObject.tag = "Player";
	}
	
}