using UnityEngine;
using System.Collections;

public class Zombie_Sounds : MonoBehaviour {

	public AudioClip[] clips;
	public int playChance = 50;

	private AudioSource audio;

	// Use this for initialization
	void Start () {
		audio = GetComponent<AudioSource>();
	}
	
	// Update is called once per frame
	void Update () {
		if(Random.Range(0, 100) == playChance) {
			audio.PlayOneShot(clips[Random.Range(0, clips.Length-1)]);
	}
}
				}
