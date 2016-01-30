using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EditorPathGizmo : MonoBehaviour {

	//Color of ray gizmo connection path nodes
	public Color rayColor = Color.green;
	//List to hold all path nodes
	public List<Transform> nodes = new List<Transform> ();
	//Array to hold all child objects
	Transform[] childArray;

	void OnDrawGizmos()
	{
		//Set Gizmo color, find all nodes and clear nodes list.
		Gizmos.color = rayColor;
		childArray = GetComponentsInChildren<Transform> ();
		nodes.Clear ();

		//Find all child transforms which will be the path nodes
		foreach (Transform node in childArray) 
		{
			if (node != this.transform) 
			{
				nodes.Add (node);
			}
		}
		//draw a ray between path n to path n+1
		for (int i = 0; i < nodes.Count; i++) 
		{
			Vector3 position = nodes [i].position;
			if (i > 0)
			{
				Vector3 previous = nodes [i - 1].position;
				Gizmos.DrawLine (previous, position);
				Gizmos.DrawWireSphere (position, 0.3f);
			}
		}

	}
}
