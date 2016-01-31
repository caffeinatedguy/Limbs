using System.Linq;
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

[RequireComponent(typeof(AudioSource))]
public class SelectObjective : MonoBehaviour
{
    #region [ Unity3D Inspector ]
    [SerializeField]
    private Text TimerText;
    [SerializeField]
    private float SecondsToSelect = 30;
    [SerializeField]
    private Text[] TeamText;
    [SerializeField]
    private Image[] PlayerIcons;
    [SerializeField]
    private string LevelToLoad = "Farm";
    #endregion [ Unity3D Inspector ]

    #region [ private variables ]
    private Dictionary<DirectionEnum, ScoreType> ObjectiveUiMap = new Dictionary<DirectionEnum, ScoreType>()
    {
        {DirectionEnum.Up, ScoreType.Eat},
        {DirectionEnum.Down, ScoreType.Plant},
        {DirectionEnum.Right, ScoreType.Capture},
        {DirectionEnum.Left, ScoreType.Trample},
    };

    private bool counterOn;
    private Dictionary<PlayerId, ScoreType> objective;
    private TeamManager teamManager;
    #endregion [ private variables ]

    #region [ Unity Events ]

    void Start()
    {
        this.objective = new Dictionary<PlayerId, ScoreType>();
        this.teamManager = FindObjectOfType<TeamManager>();

		int i = 0;
		foreach (var affix in Globals.Instance.ManageTeam.ControllerSchemes)
		{
			SetObjective(affix, GetDirectionObjective(++i));

			if (i > 3)
				break;
		}

    }

	DirectionEnum GetDirectionObjective(int i)
	{
		return (DirectionEnum)i;
	}

    void Update()
    {
       // if (counterOn)
       // {
       //     SecondsToSelect -= Time.deltaTime;
        //    TimerText.text = string.Format("Seconds left {0:0}", SecondsToSelect);
        //    if (SecondsToSelect <= 0)
        //        CounterFinished();
        //}

        //foreach (var affix in Globals.Instance.ManageTeam.ControllerSchemes)
        //{
        //    SetObjective(affix);
        //}
    }
    #endregion [ Unity Events ]

    #region [ Change Objective ]
	private void SetObjective(string controllerAffix, DirectionEnum dir)
    {
            var objective = ObjectiveUiMap[dir];
            bool newPlayer, newObjective;
            TeamPlayer player = Globals.Instance.ManageTeam.ObjectiveUpdated(controllerAffix, objective, out newPlayer, out newObjective);

            // enable player icon
            if (newPlayer)
            {
                counterOn = Globals.Instance.ManageTeam.AllPlayers.Count > 1;
                enablePlayer(player.PlayerNumber);
            }

            // update objective
            if (newPlayer || newObjective)
            {
                GetComponent<AudioSource>().Stop();
                GetComponent<AudioSource>().pitch = (float)player.PlayerNumber / 2f;
                GetComponent<AudioSource>().Play();
            }

            Debug.Log("added new " + controllerAffix + " player to team " + Globals.Instance.ManageTeam.GetTeamNumber(player.PlayerNumber));

    }

    private DirectionEnum getDirection(float horizontal, float vertical)
    {
        if (Mathf.Abs(horizontal) > Mathf.Abs(vertical))
        {
            if (horizontal > 0)
                return DirectionEnum.Right;
            else
                return DirectionEnum.Left;
        }
        else if (vertical != 0)
        {
            if (vertical > 0)
                return DirectionEnum.Up;
            else
                return DirectionEnum.Down;
        }
        else
            return DirectionEnum.None;
    }

    private void enablePlayer(PlayerId player)
    {
        //Color playerColor = PlayerIcons[(int)player - 1].color;
        //playerColor.a = 1f;
        //PlayerIcons[(int)player - 1].color = playerColor;
        //Debug.Log("enabled player " + player);
    }
    #endregion [ Change Objective ]

    #region [ Counter ]
    private void CounterFinished()
    {
        string players = "";
        foreach (var team in Globals.Instance.ManageTeam.Teams)
        {
            // choose one of the highest voted options http://stackoverflow.com/questions/4179448/return-list-with-maximum-count-using-linq
            var topObjectives = team.Players.GroupBy(p => p.ObjectiveSelected); // group the same objectives to count them
            var maxVotes = topObjectives.Max(g => g.Count()); // find the highest counts
            topObjectives = topObjectives.Where(g => g.Count() == maxVotes); // keep only the objectives with the highest count
            var teamObjective = topObjectives // choose one from the list
                .Select(g => g.Key)
                .ToList()[Random.Range(0, topObjectives.Count())];

            team.Objective = teamObjective;

            players += "Team #" + team.TeamNumber + " is " + team.Objective + ". ";
        }
        Debug.Log(players);

		if (this.LevelToLoad != "") {
			Application.LoadLevel (this.LevelToLoad);
		}
    }
    #endregion [ Counter ]
}