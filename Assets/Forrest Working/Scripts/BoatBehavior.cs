using UnityEngine;
using System.Collections;

public class BoatBehavior : MonoBehaviour {

	public float power = 100.0f;
	public float noseForce = 20.0f;
	public float maxSpeed = 10.0f;
	public float beachMaxSpeed = 15.0f;
	public float turnRate = 75.0f;
	public float nodeRadius = 10.0f;
	public int maxNodesUntilBeach = 40;
	public GameObject wanderNodesParent;
	public GameObject beachNodesParent;

	private Transform engineLocation;
	private Rigidbody _rigidbody;
	private Transform noseLocation;
	private bool beached = false;
	private Vector3 target;
	private Transform[] wanderNodes;
	private Transform[] beachNodes;

	// Use this for initialization
	void Start () {
		_rigidbody = GetComponent<Rigidbody> ();
		_rigidbody.centerOfMass = new Vector3 (_rigidbody.centerOfMass.x, -10.0f, -5.0f);

		SetUpNodes ();

		Transform[] ts = GetComponentsInChildren<Transform>();
		foreach (Transform t in ts) {
			if (t.gameObject.name == "Engine") {
				engineLocation = t;
			}
			if (t.gameObject.name == "Nose") {
				noseLocation = t;
			}
		}
	}
	
	// Update is called once per frame
	void Update () {

		if (transform.position.y < -50.0f && maxNodesUntilBeach < 40) {
			maxNodesUntilBeach = 40;
			ObjectPool.instance.PoolObject (gameObject);
		}
		if (!beached) {
			Vector3 forwardForce = new Vector3 (transform.forward.x, transform.forward.y - 2.0f, transform.forward.z);
			//_rigidbody.AddForceAtPosition (forwardForce * power, engineLocation.position);
			//_rigidbody.AddForceAtPosition (transform.up * noseForce, engineLocation.position);
			_rigidbody.AddForce(forwardForce * power);

			Vector3 direction = target - transform.position;
			Debug.DrawRay (transform.position, direction);

			//Current total speed of car
			Vector3 curspeed = new Vector3 (_rigidbody.velocity.x, _rigidbody.velocity.y, _rigidbody.velocity.z);
			//Magnitude of speed vector
			float curspeedMagnitude = curspeed.magnitude;

			//Clamp to speed if curent magnitude is higher than speed
			if (curspeedMagnitude > maxSpeed) {
				curspeed = curspeed.normalized;
				curspeed *= maxSpeed;
			}
				
			float angleBetween = Vector3.Angle (transform.forward, (target - transform.position));
			Vector3 normalDirection = Vector3.Cross(transform.forward, (target - transform.position));

			Vector3 forwardPower = transform.forward * power;
			forwardPower.y = 0;
			float powerXZ = forwardPower.magnitude;


			//If angle between heading and desired heading is negative, torque left
			if(Vector3.Dot (normalDirection,transform.up) > 1)
			{
				_rigidbody.AddTorque(Vector3.up * turnRate);
			}

			//If angle between heading and desired heading is positive, torque right
			if(Vector3.Dot (normalDirection,transform.up) < -1)
			{
				//transform.Rotate(Vector3.up * -turnRate);
				_rigidbody.AddTorque(Vector3.down * turnRate);
			}

			if (direction.magnitude < nodeRadius) {
				maxNodesUntilBeach--;
				if (maxNodesUntilBeach < 1) {
					target = GetRandomNode(true);
					maxSpeed = beachMaxSpeed;
				} else {
					target = GetRandomNode (false);
				}
			}
		}
	}

	private Vector3 GetRandomNode(bool onBeach){
		if (onBeach) {
			return beachNodes[Random.Range(0,beachNodes.Length-1)].transform.position;
		} else {
			return wanderNodes [Random.Range (0, wanderNodes.Length - 1)].transform.position;
		}
	}

	private void SetUpNodes(){
		wanderNodes = wanderNodesParent.GetComponentsInChildren<Transform> ();
		beachNodes = beachNodesParent.GetComponentsInChildren <Transform> ();
		target = GetRandomNode (false);
	}
}
