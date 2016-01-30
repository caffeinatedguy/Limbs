using System.Collections;
using UnityEngine;

/// <summary>
/// Pen class.
/// </summary>
public class Pen : Respawnable
{
	public Player lastOwner;

    /// <summary>
    /// Initialize script state.
    /// </summary>
    internal void Start()
    {

    }

	public void Plant()
	{
		if (this.lastOwner != null)
		{
			this.lastOwner.Score(ScoreType.Plant);
		}
	}
	
	internal void OnCollisionEnter(Collision collision) 
	{
		var player = collision.transform.GetComponentInParent<Player>();
		if (player != null)
		{
			this.lastOwner = player;
			return;
		}

		var sheep = collision.gameObject.GetComponent<Sheep>();
		if (sheep != null)
		{
			sheep.Capture();
		}
	}
}