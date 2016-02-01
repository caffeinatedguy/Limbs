using UnityEngine;
using System.Collections;

public class ZombieSounds : MonoBehaviour {

	public AudioClip[] clips;
	public int playChance = 50;

	private AudioSource audio;
	private float waitTime = 2.0f;
	private bool canPlay = true;

	// Use this for initialization
	void Start () {
		audio = GetComponent<AudioSource>();
	}
	
	// Update is called once per frame
	void Update () {
		if((Random.Range(0, 2500) == playChance)  && canPlay) {
			audio.clip = clips [Random.Range (0, clips.Length - 1)];
			audio.Play ();
			canPlay = false;
			Invoke("WaitForAudio", waitTime);
		}
	}

	void WaitForAudio()
	{
		canPlay = true;
	}
}
