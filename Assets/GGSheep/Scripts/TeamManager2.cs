using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System;

/// <summary>
/// Should be accessed via globals singleton Globals.Instance.Teams
/// </summary>
public class TeamManager2
{
    public int NumberOfTeams = 2;
    [Tooltip("This needs to exactly match the affix for Horizontal and Vertical settings in Edit->Project Settings->Input")]
    public List<string> ControllerSchemes = new List<string>() {
		"Wasd", "GP1", "GP2", "GP3", "GP4"  /* WASD */, "Arrows"
    };

    public Team this[int i]
    {
        get
        {
            return Teams[i];
        }
        set
        {
            Teams[i] = value;
        }
    }

    public List<Team> Teams
    {
        get
        {
            if (teams == null)
            {
                teams = recreateTeams();
            }
            return teams;
        }
    }
    private List<Team> teams;

    public List<TeamPlayer> AllPlayers = new List<TeamPlayer>();

    public int GetTeamNumber(PlayerId playerId)
    {
        AllPlayers = Teams.SelectMany(t => t.Players).ToList();

        var matchingPlayerId = AllPlayers.Where(p => p.PlayerNumber == playerId);
        if (matchingPlayerId.Count() == 0)
            // throw new Exception("player " + playerId + " was not found in the list of " + AllPlayers.Count() + " players.");
            return -1; // -1 flag used by PlayerMgr to activate player gameobjects

        var targetPlayer = matchingPlayerId.First();

        //get teams player is on
        var teams = Teams.Where(t => t.Players.Contains(targetPlayer));
        if (teams.Count() > 1)
            throw new NotSupportedException("Player can not be on more than one team.");
        return teams.First().TeamNumber;

        // Note: commented out below is if TeamNumber is stored in TeamPlayer
        //allPlayers = Teams.SelectMany(t => t.Players).ToList();
        //return allPlayers.Where(p => p.PlayerNumber == playerId)
        //    .First().TeamNumber;
    }

    public string GetPlayerAxisName(string axisName, PlayerId playerId)
    {
        return axisName + AllPlayers
            .Where(p => p.PlayerNumber == playerId)
            .Select(p => p.ControllerAffix)
            .First();
    }

    public TeamPlayer ObjectiveUpdated(string controllerAffix, ScoreType objectiveChoosen, out bool isNewPlayer, out bool newObjective)
    {
        TeamPlayer player;

        // update player chosen objective
        isNewPlayer = AllPlayers.Any(p => p.ControllerAffix == controllerAffix) == false;
        if (isNewPlayer)
            player = addPlayer(controllerAffix);
        else
            player = AllPlayers.Where(p => p.ControllerAffix == controllerAffix).First();

        // determine if it's a new objective
        newObjective = false;
        if (player.ObjectiveSelected != objectiveChoosen)
        {
            player.ObjectiveSelected = objectiveChoosen;
            newObjective = true;
        }

        return player;
    }

    public void Reset()
    {
        teams = recreateTeams();
        AllPlayers = new List<TeamPlayer>();
    }

    private TeamPlayer addPlayer(string controllerAffix)
    {
        int numPlayers = AllPlayers.Count;

        // join team based on join game order. get 1st team if player is odd, get 2nd team if player is even (not tested for 3 or more teams)
        Team theirTeam = Teams[numPlayers % Teams.Count];

        numPlayers++;
        var newPlayer = new TeamPlayer(numPlayers, controllerAffix);
        theirTeam.Players.Add(newPlayer);
        AllPlayers = Teams.SelectMany(t => t.Players).ToList();
        return newPlayer;
    }

    private List<Team> recreateTeams()
    {
        // create NumberOfTeams teams
        var result = new List<Team>();
        for (int i = 0; i < NumberOfTeams; i++)
        {
            result.Add(new Team(i));
        }
        return result;
    }
}

public class Team
{
    public int TeamNumber { get; set; }
    public List<TeamPlayer> Players { get; set; }
    public Nullable<ScoreType> Objective { get; set; }

    public Team(int teamNumber)
    {
        this.TeamNumber = teamNumber;
        this.Players = new List<TeamPlayer>();
    }
}
