using UnityEngine;
using System.Collections;

public class FollowPath : MonoBehaviour {

	public float speed = 5.0f;
	public float turnRate = 1.0f;
	//how close to the node until it will start moving towards next one
	public float nodeRadius = 1.0f;
	public GameObject path;
	public bool followingPath = false;


	private Transform[] nodes;
	private int nodeNumber = 0;
	private Vector3 target;


	// Use this for initialization
	void Start () {
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
	void LateUpdate () {
		if (followingPath && path != null) {
			//Check if you're at the end of the path
			//Find desired direction towards node
			Vector3 direction = target - transform.position;

			//Find desired rotation
			Quaternion targetRotation = Quaternion.LookRotation (direction, Vector3.up);

			//Slerp to it over time
			transform.rotation = Quaternion.Lerp (transform.rotation, targetRotation, turnRate * Time.deltaTime);

			//Move in forward direction at speed
			transform.Translate (new Vector3 (0, 0, speed * Time.deltaTime));

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
