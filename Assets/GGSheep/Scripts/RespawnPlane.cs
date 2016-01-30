using UnityEngine;
using System.Collections;

public class RespawnPlane : MonoBehaviour {

	public TileManager _tileManager;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	internal void OnTriggerEnter(Collider other) 
	{
		//other.GetComponent<Respawnable>().Respawn(_tileManager.GetSpawnPosition());
	}
}
