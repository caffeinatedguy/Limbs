using System.Collections;
using UnityEngine;

/// <summary>
/// Sheep class.
/// </summary>
public class Sheep : Respawnable
{
	public Player lastOwner;

	public SoundEffectManager soundEffectManager;

    /// <summary>
    /// Initialize script state.
    /// </summary>
    internal void Start()
    {
		this.soundEffectManager = FindObjectOfType<SoundEffectManager>();
    }

	public void Eat()
	{
		if (this.lastOwner != null)
		{
			this.lastOwner.Score(ScoreType.Eat);
		}
	}

	public void Capture()
	{
		if (this.lastOwner != null)
		{
			this.lastOwner.Score(ScoreType.Capture);
			this.soundEffectManager.Play(SoundEffectType.Gotcha);
		}

		Respawn ();
	}

	internal void OnCollisionEnter(Collision collision) 
	{
		var player = collision.transform.GetComponentInParent<Player>();
		if (player != null)
		{
            this.lastOwner = player;
		}
	}

	public override void Respawn()
	{
		base.Respawn ();

		this.lastOwner = null;
	}
}