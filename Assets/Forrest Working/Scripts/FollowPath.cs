using UnityEngine;
using System.Collections;

public class FollowPath : MonoBehaviour {

	public float power = 3.0f;
	public float speed = 5.0f;
	public float turnRate = 1.0f;
	//how close to the node until it will start moving towards next one
	public float nodeRadius = 1.0f;
	public GameObject path;
	public bool followingPath = false;
	public float stuckSpeed = 1.0f;
	public float stuckWindow = 1.0f;
	public float reverseTime = 1.0f;
	public float reverseStuckRandomRange = 0.5f;


	private Transform[] nodes;
	private int nodeNumber = 0;
	private Vector3 target;
	private Rigidbody _rigidbody;
	private bool stopped = false;
	private bool checkingStopped = false;
	private bool reverse = false;


	// Use this for initialization
	void Start () {
		nodes = path.GetComponentsInChildren<Transform> ();
		target = nodes [nodeNumber].transform.position;
		followingPath = true;
		_rigidbody = GetComponent<Rigidbody> ();
	}

	//Initialize a new path and set it to follow
	public void SetUpPath(GameObject newPath, Transform startLocation){
		path = newPath;
		nodes = path.GetComponentsInChildren<Transform> ();
		target = nodes [nodeNumber].transform.position;
		followingPath = true;
		transform.position = startLocation.position;
		transform.rotation = startLocation.rotation;
	}
	
	// Update is called once per frame
	void Update () {
			if(followingPath && path != null) {
			//Check if you're at the end of the path
			//Find desired direction towards node
			Vector3 direction = target - transform.position;
		
			//Current total speed of car
			Vector3 curspeed = new Vector3(_rigidbody.velocity.x, _rigidbody.velocity.y, _rigidbody.velocity.z);
			//Magnitude of speed vector
			float curspeedMagnitude = curspeed.magnitude;

			//Clamp to speed if curent magnitude is higher than speed
			if(curspeedMagnitude > speed)
			{
				curspeed = curspeed.normalized;
				curspeed *= speed;
			}

			//Find the projection of the total speed in the forward direction
			float forwardSpeed = Vector3.Project (curspeed, transform.forward.normalized).magnitude;

			//Check if car is "stuck"
			if (forwardSpeed < stuckSpeed && !checkingStopped) {
				Debug.Log ("Checking Stopped on " + gameObject.name + " with speed " + curspeedMagnitude);
				checkingStopped = true;
				StartCoroutine("CheckStopped");
			}

			float angleBetween = Vector3.Angle (transform.forward, (target - transform.position));
			Vector3 normalDirection = Vector3.Cross(transform.forward, (target - transform.position));

			//Always Drive Forward or back
			if (!reverse) {
				_rigidbody.AddForce (transform.forward * power);
			} else {
				_rigidbody.AddForce (-transform.forward * power);
			}


			//If angle between heading and desired heading is negative, torque left
			if(Vector3.Dot (normalDirection,transform.up) > 1 && Mathf.Abs(forwardSpeed) > 0.2)
			{
				_rigidbody.AddTorque(Vector3.up * turnRate);
			}

			//If angle between heading and desired heading is positive, torque right
			if(Vector3.Dot (normalDirection,transform.up) < -1 && Mathf.Abs(forwardSpeed) > 0.2)
			{
				//transform.Rotate(Vector3.up * -turnRate);
				_rigidbody.AddTorque(Vector3.down * turnRate);
			}


			//Check if node has been reached, then target next node if not
			//If last node has been reached set following and path to false and pool yourself
			if (direction.magnitude < nodeRadius) {
				nodeNumber++;
				if (nodeNumber < (nodes.Length)) {
					target = nodes [nodeNumber].transform.position;
				} else {
					followingPath = false;
					path = null;
					nodeNumber = 0;
					ObjectPool.instance.PoolObject (gameObject);
				}
			}
		}
	}

	//Check back after a second and see if the car is still stuck.  Set it into reverse if so.
	IEnumerator CheckStopped(){
		yield return new WaitForSeconds (Random.Range(stuckWindow - reverseStuckRandomRange, 
														stuckWindow + reverseStuckRandomRange));
		//Current total speed of car
		Vector3 curspeed = new Vector3(_rigidbody.velocity.x, _rigidbody.velocity.y, _rigidbody.velocity.z);
		//Find the projection of the total speed in the forward direction
		float forwardSpeed = Vector3.Project (curspeed, transform.forward.normalized).magnitude;

		Debug.Log ("Checking again on " + gameObject.name + " with forward speed " + forwardSpeed);
		//Magnitude of speed vector
		if (forwardSpeed < stuckSpeed) {
			Debug.Log ("Reversing on " + gameObject.name);
			reverse = true;
			turnRate += 50.0f;
			yield return new WaitForSeconds (Random.Range(reverseTime - reverseStuckRandomRange,
															reverseTime + reverseStuckRandomRange));
			turnRate -= 50.0f;
			reverse = false;
		}

		checkingStopped = false;
	}
}
