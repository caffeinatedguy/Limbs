using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ObjectPool : MonoBehaviour
{

	public static ObjectPool instance;

	/// The prefabs which the pool can instantiate.
	public GameObject[] objectPrefabs;

	/// The pooled objects currently available.
	public List<GameObject>[] pooledObjects;

	/// The amount of objects of each type to buffer.
	public int[] amountToBuffer;

	public int defaultBufferAmount = 3;

	/// The container object that will keep unused pooled objects
	protected GameObject containerObject;

	void Awake ()
	{
		instance = this;
	}

	void Start ()
	{
		containerObject = new GameObject("ObjectPool");

		//Loop through the object prefabs and make a new list for each one.
		pooledObjects = new List<GameObject>[objectPrefabs.Length];

		int i = 0;
		foreach ( GameObject objectPrefab in objectPrefabs )
		{
			pooledObjects[i] = new List<GameObject>(); 

			int bufferAmount;

			if (i < amountToBuffer.Length) {
				bufferAmount = amountToBuffer [i];
			} else {
				bufferAmount = defaultBufferAmount;
			}

			for ( int n=0; n<bufferAmount; n++)
			{
				GameObject newObj = Instantiate(objectPrefab) as GameObject;
				newObj.name = objectPrefab.name;
				PoolObject(newObj);
			}

			i++;
		}
	}
		
	/// Gets a new object for the name provided

	public GameObject GetObjectOfType ( string objectType , bool onlyPooled )
	{
		for(int i=0; i<objectPrefabs.Length; i++)
		{
			GameObject prefab = objectPrefabs[i];
			if(prefab.name == objectType)
			{

				if(pooledObjects[i].Count > 0)
				{
					GameObject pooledObject = pooledObjects[i][0];
					pooledObjects[i].RemoveAt(0);
					pooledObject.transform.parent = null;
					pooledObject.SetActiveRecursively(true);

					return pooledObject;

				} else if(!onlyPooled) {
					GameObject obj = Instantiate(objectPrefabs[i]) as GameObject;
					int pos = obj.name.IndexOf ("(");
					obj.name = obj.name.Substring(0, pos);
					return obj;
				}

				break;

			}
		}

		return null;
	}

	/// Pools the object specified.  Will not be pooled if there is no prefab of that type.
	public void PoolObject ( GameObject obj )
	{
		for ( int i=0; i<objectPrefabs.Length; i++)
		{
			if(objectPrefabs[i].name == obj.name)
			{
				obj.SetActiveRecursively(false);
				obj.transform.parent = containerObject.transform;
				pooledObjects[i].Add(obj);
				return;
			}
		}
	}

}

