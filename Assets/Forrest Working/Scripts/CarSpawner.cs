using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CarSpawner : MonoBehaviour {

	//Holds the paths for the cars to follow
	public GameObject[] paths;
	//Minimum time between car spawns
	public float minSpawnTime = 5;
	//Maximum time between car spawns
	public float maxSpawnTime = 10;
	//Maximum amount of cars that can be alive from this spawner
	//public int maxCarsAlive = 3;
	//Car names
	public string[] carTypes = {"Cop"};


	private bool readyToSpawn = true;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		if (readyToSpawn) {
			readyToSpawn = false;
			Invoke("SpawnCar", Random.Range(minSpawnTime, maxSpawnTime));
		}
	}

	//Invoke this function to call after a random time between min and max spawn time
	//Get a random car from the object pool, assign it a random path, and set it to following
	void SpawnCar(){
		string carToGet = carTypes [Random.Range (0, carTypes.Length - 1)];
		GameObject car = ObjectPool.instance.GetObjectOfType (carToGet, false);
		FollowPath carScript = car.GetComponent<FollowPath>();
		carScript.SetUpPath (paths [Random.Range (0, paths.Length - 1)], transform);
		readyToSpawn = true;
	}
}
