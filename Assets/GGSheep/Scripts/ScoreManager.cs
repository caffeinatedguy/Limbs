using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// ScoreManager class.
/// </summary>
public class ScoreManager : MonoBehaviour
{
    //static public ScoreManager instance;

    //void Awake()
    //{
    //    instance = this;
    //}

	public int tramplePoints = 1;
	public int eatPoints = 2;
	public int capturePoints = 25;
	public int plantPoints = 2;

	public int countdownTicks = 5;
	public float gameTime = 90f;
	private bool startTimer = false;

	/// <summary>
    /// Collection of score text fields.
    /// </summary>
	public List<ScoreboardUI> scoreboards;

	public Text timer;

	public Popup popup;

    public GameOverScreen gameOverScreen;

	public int maxHeadSizeReferenceScore = 100;

    public int GetTeamScore(PlayerId playerId)
    {
        var teamNumber = Globals.Instance.ManageTeam.GetTeamNumber(playerId);
        ScoreType scoreType = Globals.Instance.ManageTeam[teamNumber].Objective.Value;

        return scores[teamNumber][scoreType];
    }

    public int GetTotalTeamScore(PlayerId playerId)
    {
        var teamNumber = Globals.Instance.ManageTeam.GetTeamNumber(playerId);

        return scores[teamNumber].Sum(x => x.Value);
    }

    /// <summary>
    /// Each player's score for each score type.
    /// </summary>
	//private Dictionary<PlayerId, Dictionary<ScoreType, int>> playerScores;

    private Dictionary<int, Dictionary<ScoreType, int>> scores;

    private SoundEffectManager cachedSoundEffects;

    /*
    /// <summary>
    /// This structure defines our teams.
    /// TODO: This could be configurable in a menu, or extended to include more/fewer teams with more/fewer players.
    /// </summary>
    private Dictionary<int, List<PlayerId>> teamToPlayers = new Dictionary<int, List<PlayerId>>
        {
            { 0, new List<PlayerId> { PlayerId.One, PlayerId.Two } },
            { 1, new List<PlayerId> { PlayerId.Three, PlayerId.Four } }
        };

    /// <summary>
    /// This structure gives us the team a given player is on.
    /// </summary>
    private Dictionary<PlayerId, int> playerToTeam; 
    */
    /// <summary>
    /// Initialize script state.
    /// </summary>
    internal void Start()
    {
        this.cachedSoundEffects = GameObject.FindObjectOfType<SoundEffectManager>();
        //Test persistance of Globals.cs from menu scene
        //Debug.Log("Globals instance = " + Globals.Instance.Objective[PlayerId.One] + Globals.Instance.Objective[PlayerId.Two]);

        // initialize score structure
        this.scores = new Dictionary<int, Dictionary<ScoreType, int>>();
        for (int teamNumber = 0; teamNumber < Globals.Instance.ManageTeam.NumberOfTeams; teamNumber++)
        {
            this.scores.Add(teamNumber, new Dictionary<ScoreType, int>());
            foreach (ScoreType scoreType in Enum.GetValues(typeof(ScoreType)))
            {
                this.scores[teamNumber].Add(scoreType, 0);
            }
        }

        /*
        // initialize player score structure
		this.playerScores = new Dictionary<PlayerId, Dictionary<ScoreType, int>>();
        foreach (PlayerId playerId in Enum.GetValues(typeof(PlayerId)))
		{
			this.playerScores.Add(playerId, new Dictionary<ScoreType, int>());
			foreach (ScoreType scoreType in Enum.GetValues(typeof(ScoreType)))
			{
			    if (scoreType != ScoreType.None)
			    {
			        this.playerScores[playerId].Add(scoreType, 0);
			    }
			}
		}

        // initialize reverse lookup team lookup, playerToTeam
        this.playerToTeam = new Dictionary<PlayerId, int>();
        for (int teamNumber = 0; teamNumber < this.teamToPlayers.Count; teamNumber++)
        {
            foreach (var playerId in this.teamToPlayers[teamNumber])
            {
                this.playerToTeam.Add(playerId, teamNumber);
            }
        }*/

		// enable only relevant scoreboards
		for (int teamNumber = 0; teamNumber < this.scoreboards.Count; teamNumber++)
		{
            this.scoreboards[teamNumber].gameObject.SetActive(teamNumber < Globals.Instance.ManageTeam.NumberOfTeams);
		}

		//this.StartCoroutine(this.WaitAndInvoke(1f, () => this.StartCountdown()));
		this.InvokeRepeating("Countdown", 1f, 1f);
    }

    /// <summary>
    /// Update script, called once per frame.
    /// </summary>
    internal void Update()
    {
		if (!this.startTimer)
		{
			return;
		}

		if (this.gameTime > 0f)
		{
			this.gameTime -= Time.deltaTime;
			if (this.gameTime < 0f)
			{
				this.gameTime = 0f;
				// finish and score game
				this.popup.Show("Game Over!");

			    int bestScore = 0;
                int bestTeam = 0;
                for (int teamNumber = 0; teamNumber < Globals.Instance.ManageTeam.NumberOfTeams; teamNumber++)
			    {
                    var team = Globals.Instance.ManageTeam[teamNumber];
			        this.scoreboards[teamNumber].HighlightObjective(team.Objective.Value);
			        if (this.scores[teamNumber][team.Objective.Value] > bestScore)
			        {
			            bestScore = this.scores[teamNumber][team.Objective.Value];
			            bestTeam = teamNumber;
			        }
			    }

			    this.StartCoroutine(this.WaitAndInvoke(2f, () => this.gameOverScreen.Show(string.Format("Team {0} wins!", bestTeam + 1))));

                //foreach(var player in Globals.Instance.Objective.Keys)
                //{
                //    var objective = Globals.Instance.Objective[player];
                //    var team = this.playerToTeam[player];
                //    this.scoreboards[team].HighlightObjective(objective);
                //}
			}
		}

		this.timer.text = string.Format("{0:0}", this.gameTime);
    }

    /// <summary>
    /// Update the player's score and calculates the new team score.
    /// </summary>
    /// <param name="playerId"></param>
    /// <param name="scoreType"></param>
	public void Score(PlayerId playerId, ScoreType scoreType)
	{
		if (!this.startTimer)
		{
			return;
		}

        // increment player score
        var teamNumber = Globals.Instance.ManageTeam.GetTeamNumber(playerId);
        this.scores[teamNumber][scoreType] += this.ScoreModifier(scoreType);
		//this.playerScores[playerId][scoreType] += this.ScoreModifier(scoreType);

        // get player's team
        //var team = this.playerToTeam[playerId];

        // aggregate team score 
        //var teamScore = this.TeamScore(team, scoreType);

        // get the text field for this player's team and score type and update it
		if (teamNumber < this.scoreboards.Count && this.scoreboards[teamNumber] != null)
		{
            this.scoreboards[teamNumber].SetScore(scoreType, this.scores[teamNumber][scoreType]);
		}
	}

    ///// <summary>
    ///// Get the team's total score in the given category.
    ///// </summary>
    ///// <param name="team"></param>
    ///// <param name="scoreType"></param>
    ///// <returns></returns>
    //private int TeamScore(int team, ScoreType scoreType)
    //{
    //    var rval = 0;
    //    for (var index = 0; index < this.teamToPlayers[team].Count; index++)
    //    {
    //        var playerId = this.teamToPlayers[team][index];
    //        rval += this.playerScores[playerId][scoreType];
    //    }

    //    return rval;
    //}

	private int ScoreModifier(ScoreType scoreType)
	{
		switch (scoreType)
		{
		case ScoreType.Trample:
			return this.tramplePoints;
		case ScoreType.Eat:
			return this.eatPoints;
		case ScoreType.Capture:
			return this.capturePoints;
		case ScoreType.Plant:
			return this.plantPoints;
		}

		throw new InvalidEnumArgumentException("No score modifier defined for ScoreType " + scoreType);
	}

	private void Countdown()
	{
		if (this.countdownTicks > 0)
		{
			this.popup.Show(this.countdownTicks.ToString());
			this.countdownTicks--;
            cachedSoundEffects.Play(SoundEffectType.ClockTick);
		} 
		else
		{
			this.popup.Show("Go!");
			this.startTimer = true;
			this.CancelInvoke();
		}
	}


//	private void StartTimer()
//	{
//		Debug.Log("Start Timer");
//		this.startTimer = true;
//	}
//
    internal IEnumerator WaitAndInvoke(float delay, Action function)
    {
        yield return new WaitForSeconds(delay);
        function();
    }
}