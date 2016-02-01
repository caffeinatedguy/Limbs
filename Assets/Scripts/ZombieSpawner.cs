using UnityEngine;
using System.Collections;

public class ZombieSpawner : MonoBehaviour {


	public float minSpawnTime = 3.0f;
	public float maxSpawnTime = 9.0f;
	public NavMesh mesh;

	private bool readyToSpawn = true;

	// Use this for initialization
	void Start () {
	
	}
	
	void Update () {
		if (readyToSpawn) {
			readyToSpawn = false;
			Invoke("SpawnZombie", Random.Range(minSpawnTime, maxSpawnTime));
		}
	}

	//Invoke this function to call after a random time between min and max spawn time
	//Get a random car from the object pool, assign it a random path, and set it to following
	void SpawnZombie(){
		GameObject zombie = ObjectPool.instance.GetObjectOfType ("Zombie", false);
		zombie.transform.position = transform.position;
		readyToSpawn = true;
	}
}
