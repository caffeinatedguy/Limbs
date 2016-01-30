using UnityEngine;

/// <summary>
/// Grass class.
/// </summary>
public class Grass : TileGround
{
	private SoundEffectManager soundEffectManager;

	internal void Awake()
	{
		this.soundEffectManager = FindObjectOfType<SoundEffectManager>();
	}

	internal void OnTriggerEnter(Collider other) 
	{
		//Debug.Log ("TRIGGER ENTER");
		Player player = other.GetComponent<Player>();
		if (player != null && player.PlayerState == PlayerStates.Trample)
		{
			if (this._state == ETileState.grass)
			{
				player.Score(ScoreType.Trample);
				SetState(ETileState.dirt);
				this.soundEffectManager.Play(SoundEffectType.Step);
				return;
			}
		}

		var pen = other.GetComponent<Pen>();
		if (pen != null)
		{
			if (this._state == ETileState.dirt)
			{
				pen.Plant();
				SetState(ETileState.grass);
				this.soundEffectManager.Play(SoundEffectType.Plant);
				return;
			}
		}

		var sheep = other.GetComponent<Sheep>();
		if (sheep != null)
		{
			if (this._state == ETileState.grass)
			{
				sheep.Eat();
				SetState(ETileState.dirt);
				this.soundEffectManager.Play(SoundEffectType.Baa);
				return;
			}
		}
	}
}