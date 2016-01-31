using UnityEngine;
using System.Collections;

public class SeeTutorial : MonoBehaviour {
	// Update is called once per frame
	void OnGUI () {
		if(GUI.Button(new Rect(20f, 20f, 200f, 60f), "-- See Tutorial --\nLearn how to use Simple IK"))
			Application.OpenURL("http://www.takohi.com/use-simple-ik-on-unity/");
	}
}
