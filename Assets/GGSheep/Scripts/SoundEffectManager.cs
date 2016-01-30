// --------------------------------
// <copyright file="SoundEffectManager.cs" company="Rumor Games">
//     Copyright (C) Rumor Games, LLC.  All rights reserved.
// </copyright>
// --------------------------------

using System;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

/// <summary>
/// SoundEffectManager class.
/// </summary>
public class SoundEffectManager : MonoBehaviour
{
	/// <summary>
	/// SoundEffectDefinition struct.
	/// </summary>
	[Serializable]
	public struct SoundEffectDefinition
	{
		/// <summary>
		/// Sound effect type.
		/// </summary>
		public SoundEffectType soundEffect;
		
		/// <summary>
		/// Audio clip.
		/// </summary>
		public List<AudioClip> audioClips;
	}
	
	/// <summary>
	/// Collection of sound effects and audio clips.
	/// </summary>
	public SoundEffectDefinition[] soundEffectDefinitions;
	
	/// <summary>
	/// Mapping of sound effects to audio clips.
	/// </summary>
	private IDictionary<SoundEffectType, List<AudioClip>> soundEffects; 
	
	/// <summary>
	/// Initialize script state.
	/// </summary>
	internal void Awake()
	{
		// add sound effects to dictionary
		this.soundEffects = new Dictionary<SoundEffectType, List<AudioClip>>();
		for (var i = 0; i < this.soundEffectDefinitions.Length; i++)
		{
			var soundEffectDefinition = this.soundEffectDefinitions[i];
			this.soundEffects[soundEffectDefinition.soundEffect] = soundEffectDefinition.audioClips;
		}
	}
	
	/// <summary>
	/// Play the requested sound effect.
	/// </summary>
	/// <param name="soundEffectType">Sound effect to play.</param>
	public void Play(SoundEffectType soundEffectType)
	{
		var effects = this.soundEffects[soundEffectType];
		this.Play(effects[Random.Range(0, effects.Count)]);
	}
	
	/// <summary>
	/// Play the given audio clip.
	/// </summary>
	/// <param name="audioClip">Audio clip to play.</param>
	public void Play(AudioClip audioClip)
	{
		this.GetComponent<AudioSource>().PlayOneShot(audioClip);
	}
}