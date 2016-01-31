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


	private Transform[] nodes;
	private int nodeNumber = 0;
	private Vector3 target;
	private Rigidbody _rigidbody;


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

			//Find desired rotation
			//Quaternion targetRotation = Quaternion.LookRotation (direction.normalized, Vector3.up);

			//Slerp to it over time
			//transform.rotation = Quaternion.Slerp (transform.rotation, targetRotation, turnRate * Time.deltaTime);

			//Move in forward direction at speed
			//transform.Translate (new Vector3 (0, 0, speed * Time.deltaTime));*/



			Vector3 curspeed = new Vector3(_rigidbody.velocity.x, _rigidbody.velocity.y, _rigidbody.velocity.z);



			if(curspeed.magnitude > speed)
			{
				curspeed = curspeed.normalized;
				curspeed *= speed;
			}
			


			float angleBetween = Vector3.Angle (transform.forward, (target - transform.position));
			Vector3 normalDirection = Vector3.Cross(transform.forward, (target - transform.position));
			//Debug.Log (Vector3.Dot (V3,transform.up) + " With angle " + angleBetween);

			//Always Drive Forward
			_rigidbody.AddForce (transform.forward * power);

			//Find the projection of the total speed in the forward direction
			float forwardSpeed = Vector3.Project (curspeed, transform.forward.normalized).sqrMagnitude;

			//If angle between heading and desired heading is negative, torque left
			if(Vector3.Dot (normalDirection,transform.up) > 0 && forwardSpeed > 1)
			{
				_rigidbody.AddTorque(Vector3.up * turnRate);
			}

			//If angle between heading and desired heading is positive, torque right
			if(Vector3.Dot (normalDirection,transform.up) < 0 && forwardSpeed > 1)
			{
				//transform.Rotate(Vector3.up * -turnRate);
				_rigidbody.AddTorque(Vector3.down * turnRate);
			}

			/*if(Input.GetKey(KeyCode.D))
			{
				_rigidbody.AddTorque(Vector3.up * turnRate);

			}*/


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
}
