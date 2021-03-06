﻿using UnityEngine;
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
	private bool grounded = false;
	private int randomReverseTurn = 0;
	private float reverseTargetOffsetX = 0.0f;
	private float reverseTargetOffsetZ = 0.0f;
	private float reverseTargetOffsetMagnitude = 10.0f;


	void Start () {
		nodes = path.GetComponentsInChildren<Transform> ();
		target = nodes [nodeNumber].transform.position;
		followingPath = true;
		_rigidbody = GetComponent<Rigidbody> ();
		_rigidbody.centerOfMass = new Vector3 (_rigidbody.centerOfMass.x, 0.1f, _rigidbody.centerOfMass.z);
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
		//Check if you fell off the map
		if (transform.position.y < -50.0f && nodeNumber > 1) {
			followingPath = false;
			path = null;
			nodeNumber = 0;
			ObjectPool.instance.PoolObject (gameObject);
		}

		//Only apply force if following a path, there is a path to follow and the car is grounded
		if(followingPath && path != null && grounded) {
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
				checkingStopped = true;
				StartCoroutine("CheckStopped");
			}

			float angleBetween = Vector3.Angle (transform.forward, (target - transform.position));
			Vector3 normalDirection = Vector3.Cross(transform.forward, (target - transform.position));

			Vector3 forwardPower = transform.forward * power;
			forwardPower.y = 0;
			float powerXZ = forwardPower.magnitude;

			//Always Drive Forward or back
			if (!reverse) {
				_rigidbody.AddForce (transform.forward * powerXZ);
			} else {
				_rigidbody.AddForce (-transform.forward * powerXZ);

				//_rigidbody.AddTorque (Vector3.up * randomReverseTurn * turnRate);
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

		//Magnitude of speed vector
		if (forwardSpeed < stuckSpeed) {
			//Car is stuck!
			//Reverse and add a random offset to the target so you turn
			reverse = true;
			reverseTargetOffsetX = Random.Range (-reverseTargetOffsetMagnitude, reverseTargetOffsetMagnitude);
			reverseTargetOffsetZ = Random.Range (-reverseTargetOffsetMagnitude, reverseTargetOffsetMagnitude);

			target.x += reverseTargetOffsetX;
			target.z += reverseTargetOffsetZ;
			yield return new WaitForSeconds (Random.Range(reverseTime - reverseStuckRandomRange,
															reverseTime + reverseStuckRandomRange));
			reverse = false;
			target.x -= reverseTargetOffsetX;
			target.z -= reverseTargetOffsetZ;
		}

		checkingStopped = false;
	}

	void OnTriggerStay(Collider other){
		grounded = true;
	}

	void OnTriggerExit(Collider other){
		grounded = false;
	}
}
