using UnityEngine;
using System.Collections;

public class BoatSpawner : MonoBehaviour {

	//Minimum time between car spawns
	public float minSpawnTime = 10;
	//Maximum time between car spawns
	public float maxSpawnTime = 30;
	//Maximum amount of cars that can be alive from this spawner
	//public int maxCarsAlive = 3;
	//Car names
	public string[] boatTypes;
	public GameObject wanderNodesParent;
	public GameObject beachNodesParent;

	private bool readyToSpawn = true;

	// Use this for initialization
	void Start () {
	
	}
	
	void Update () {
		if (readyToSpawn) {
			readyToSpawn = false;
			Invoke("SpawnBoat", Random.Range(minSpawnTime, maxSpawnTime));
		}
	}

	//Invoke this function to call after a random time between min and max spawn time
	//Get a random car from the object pool, assign it a random path, and set it to following
	void SpawnBoat(){
		string boatToGet = boatTypes [Random.Range (0, boatTypes.Length - 1)];
		GameObject boat = ObjectPool.instance.GetObjectOfType (boatToGet, false);
		boat.transform.position = transform.position;
		BoatBehavior boatScript = boat.GetComponent<BoatBehavior>();
		boatScript.wanderNodesParent = wanderNodesParent;
		boatScript.beachNodesParent = beachNodesParent;
		readyToSpawn = true;
	}
}
