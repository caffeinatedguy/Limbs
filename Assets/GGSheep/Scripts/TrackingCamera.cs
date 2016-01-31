using System.Collections;
using UnityEngine;
using System.Collections.Generic;
using System.Linq;

/// <summary>
/// TrackingCamera class.
/// </summary>
public class TrackingCamera : MonoBehaviour
{
	private Vector3 playerCoG; 
	private List<Player> players;
	private Vector3 homePosition;
	//private Vector3 targetPosition;
	//private Vector3 momentum;

    /// <summary>
    /// Initialize script state.
    /// </summary>
    internal void Start()
    {
		this.homePosition = this.transform.position;
		this.players = FindObjectsOfType<Player>().ToList();
		this.playerCoG = this.CenterOfGravity();
		Debug.Log ("Start update tracking");
    }

    /// <summary>
    /// Update script, called once per frame.
    /// </summary>
    internal void FixedUpdate()
    {
		Debug.Log ("Fixed update tracking");
		var currentPlayerCoG = this.CenterOfGravity();
		var offset = currentPlayerCoG - this.playerCoG;
		var targetPosition = this.homePosition + offset;

		var direction = targetPosition - this.transform.position;
		//this.momentum += direction * Time.deltaTime;
		this.transform.position += direction * Time.deltaTime;
    }

	private Vector3 CenterOfGravity()
	{
		Vector3 position = Vector3.zero;
		foreach (var player in this.players)
		{
			position += player.transform.position;
		}

		position.y = 0f;

		return position / this.players.Count;
	}
}