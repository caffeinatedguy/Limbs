using UnityEngine;
using System.Collections;

public class TeamPlayer
{
    public PlayerId PlayerNumber { get; set; }
    public string ControllerAffix { get; set; }
    public ScoreType ObjectiveSelected { get; set; }

    public int TeamNumber
    {
        get
        {
            // check if value has been cached
            if (teamNumber != 0)
                return teamNumber;

            // determine teamNumber
            teamNumber = Globals.Instance.ManageTeam.GetTeamNumber(PlayerNumber);
            return teamNumber;
        }
    }
    private int teamNumber;

    public TeamPlayer(int playerNumber, string controllerAffix)
    {
        this.PlayerNumber = (PlayerId)playerNumber;
        this.ControllerAffix = controllerAffix;
    }

    /// <summary> forces the players teamnumber to be re-determined </summary>
    public void TeamNumberInvalidate()
    {
        teamNumber = 0;
    }
}
