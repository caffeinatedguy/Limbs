using UnityEngine;
using System.Collections;

public class Respawnable : MonoBehaviour {
	private Vector3 m_respawnPoint;

	void Awake()
	{
		m_respawnPoint = transform.position;
	}

	// Update is called once per frame
	public virtual void Update () 
	{
		//if (transform.position.y < TileManager.instance.RespawnHeight) 
		//{
		//	if (this is Sheep)
		//	{
		//		(this as Sheep).soundEffectManager.Play(SoundEffectType.KillMe);
		//	}

		//	Respawn ();
		//}
	
	}

	public virtual void Respawn()
	{
		ResetPhysics ();

		Vector3 vSpawnPos = TileManager.instance.GetSpawnPosition ();
		if (vSpawnPos == Vector3.zero)
			transform.position = m_respawnPoint;
		else
			transform.position = vSpawnPos;
	}

	void ResetPhysics()
	{
		if( GetComponent<Rigidbody>() != null )
		{
			GetComponent<Rigidbody>().velocity = Vector3.zero; 
			GetComponent<Rigidbody>().angularVelocity = Vector3.zero;

		    //Point the player random 
			if (!(this is Pen))
			{
                transform.rotation = Quaternion.Euler(Vector3.zero);
				float angle = Random.Range(0.0f,Mathf.PI * 2.0f);
				transform.RotateAround(new Vector3(0.0f,1.0f,0.0f),angle);
			}
		}
	}
}
