using UnityEngine;
using System.Collections;

public class FollowPath : MonoBehaviour {

	public float speed = 5.0f;
	public float turnRate = 1.0f;
	public GameObject path;
	public float nodeRadius = 1.0f;

	private Transform[] nodes;
	private int nodeNumber = 0;
	private Vector3 target;

	// Use this for initialization
	void Start () {
		nodes = path.GetComponentsInChildren<Transform> ();
		target = nodes [nodeNumber].transform.position;
	}
	
	// Update is called once per frame
	void Update () {
		//Check if you're at the end of the path
		if (nodeNumber < (nodes.Length)) 
		{
			//Find desired direction towards node
			Vector3 direction = target - transform.position;

			//Find desired rotation
			Quaternion targetRotation = Quaternion.LookRotation (direction, Vector3.up);

			//Slerp to it over time
			transform.rotation = Quaternion.Slerp (transform.rotation, targetRotation, turnRate * Time.deltaTime);

			//Move in forward direction at speed
			transform.Translate (new Vector3 (0, 0, speed * Time.deltaTime));

			//Check if node has been reached, then target next node
			if (direction.magnitude < nodeRadius) {
				nodeNumber++;
				if (nodeNumber < (nodes.Length)) {
					target = nodes [nodeNumber].transform.position;
				}
			}
		}
	}
}
