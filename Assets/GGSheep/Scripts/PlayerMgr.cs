using UnityEngine;
using System.Collections;
using System.Linq;

public class PlayerMgr : MonoBehaviour 
{
	Player[] _players;
	void Awake()
	{
		_players = GameObject.FindObjectsOfType<Player> ();
		_players = _players.OrderBy (player => player.name).ToArray();
	}

	[SerializeField]
	private bool _debugPlayer = false;

	// Use this for initialization
	void Start ()
	{
		foreach(Player player in _players)
		{
            if ( Globals.Instance.ManageTeam.GetTeamNumber(player.playerId) == -1 )
			{
				player.gameObject.SetActive(false);
			}

		}

		if (_debugPlayer) 
		{
			_players[0].gameObject.SetActive(true);
		}
	}
	
	// Update is called once per frame
	void Update () 
	{
	
	}
}
