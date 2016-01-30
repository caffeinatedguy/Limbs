using System;
using System.Collections.Generic;
using System.ComponentModel;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// ScoreboardUI class.
/// </summary>
public class ScoreboardUI : MonoBehaviour
{
	public ScoreUI trample;
	public ScoreUI eat;
	public ScoreUI capture;
	public ScoreUI plant;

	/// <summary>
	/// Update a score with a new value.
	/// </summary>
	/// <param name="scoreType">Score type.</param>
	/// <param name="value">Value.</param>
	public void SetScore(ScoreType scoreType, int value)
	{
		var score = this.GetScoreUI(scoreType);
		score.SetScore(value);
	}

	public void HighlightObjective(ScoreType scoreType)
	{
		var score = this.GetScoreUI(scoreType);
		score.Highlight();
	}

	private ScoreUI GetScoreUI(ScoreType scoreType)
	{
		switch (scoreType)
		{
			case ScoreType.Trample:
				return this.trample;
			case ScoreType.Eat:
				return this.eat;
			case ScoreType.Capture:
				return this.capture;
			case ScoreType.Plant:
				return this.plant;
		}
		
        // TODO: gate on team selecting an objective
		throw new InvalidEnumArgumentException("No UI component defined for ScoreType " + scoreType);
	}
}