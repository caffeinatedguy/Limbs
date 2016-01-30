using UnityEngine;
using System.Collections;

public class CarSpawner : MonoBehaviour {

	//Holds the paths for the cars to follow
	public GameObject[] paths;
	//Minimum time between car spawns
	public float minSpawnTime;
	//Maximum time between car spawns
	public float maxSpawnTime;
	//Maximum amount of cars that can be alive from this spawner
	public int maxCarsAlive;
	//Car names
	public string[] carTypes = {"Cop"};


	// Use this for initialization
	void Start () {
		//ObjectPool.FindObjectOfType(
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
