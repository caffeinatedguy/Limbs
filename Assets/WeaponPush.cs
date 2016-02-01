using UnityEngine;
using System.Collections;

public class WeaponPush : MonoBehaviour 
{
	// Use this for initialization
	void Start () 
	{
	
	}
	
	// Update is called once per frame
	void Update () 
	{
	
	}

	void OnTriggerEnter(Collider collider)
	{
		if (collider.gameObject != null) 
		{
			Player other = collider.transform.GetComponentInParent<Player> ();
			Player you = transform.GetComponentInParent<Player> ();
			if(other != you)
			{
				//other.GetComponent<Rigidbody> ().AddExplosionForce (3, transform.position, 10);
				//Debug.Log ("COLLIDE");
			}
		}
	}
}
