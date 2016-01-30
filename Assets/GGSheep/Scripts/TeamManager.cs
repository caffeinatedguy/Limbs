// --------------------------------
// <copyright file="TeamManager.cs" company="Rumor Games">
//     Copyright (C) Rumor Games, LLC.  All rights reserved.
// </copyright>
// --------------------------------

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// TeamManager class.
/// </summary>
public class TeamManager : MonoBehaviour
{
    private static TeamManager instance;

    public List<TeamDefinition> teams;

    private Dictionary<PlayerId, int> playerToTeamLookup;

    /// <summary>
    /// Initialize script state.
    /// </summary>
    internal void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(this.gameObject);
        }
        else
        {
            Destroy(this.gameObject);
        }
    }

    internal void Start()
    {
        this.playerToTeamLookup = new Dictionary<PlayerId, int>();
        for (int teamNumber = 0; teamNumber < this.teams.Count; teamNumber++)
        {
            foreach (var member in this.teams[teamNumber].members)
            {
                this.playerToTeamLookup.Add(member, teamNumber);
            }
        }
    }

    public bool HasTeam(PlayerId playerId)
    {
        return this.playerToTeamLookup.ContainsKey(playerId);
    }

    public int GetTeamNumber(PlayerId playerId)
    {
        return this.playerToTeamLookup[playerId];
    }

    public TeamDefinition GetTeam(PlayerId playerId)
    {
        return this.teams[this.GetTeamNumber(playerId)];
    }

    [Serializable]
    public class TeamDefinition
    {
        public List<PlayerId> members;
        public ScoreType objective;
    }
}
