using UnityEngine;
using System.Collections;

public class DemoSwitcher : MonoBehaviour {

	public Transform cameraTransform;
	public Transform[] camPosTransfroms;
	public Transform target = null;
	public float speed = 3f;
	public int index;
	// Use this for initialization
	void Start () {
		transform.position = camPosTransfroms[0].position;
		transform.rotation = camPosTransfroms[0].rotation;
		target = camPosTransfroms[0];
	}
	
	void OnGUI() {
		if (GUI.Button(new Rect(10, 10, 100, 30), "Last"))
		{
			index--;
			if(index<0)index=camPosTransfroms.Length-1;
			target = camPosTransfroms[index];
		}
		
		if (GUI.Button(new Rect(Screen.width-110, 10, 100, 30), "Next"))
		{
			index++;
			index = index % camPosTransfroms.Length;
			target = camPosTransfroms[index];
		}
	}

	void Update()
	{
		transform.position = Vector3.Slerp(transform.position,target.position,Time.deltaTime * speed);
		transform.rotation = Quaternion.Slerp(transform.rotation,target.rotation,Time.deltaTime * speed);
	}


}
