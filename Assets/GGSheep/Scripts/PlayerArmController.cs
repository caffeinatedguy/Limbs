using UnityEngine;
using System.Collections;

public class PlayerArmController : MonoBehaviour 
{
	[SerializeField]
	private GameObject _limbToMove;

	[SerializeField]
	Player _player;



	void  Awake ()
	{
	}

	void Update()
	{
		float v = Input.GetAxisRaw(Globals.Instance.ManageTeam.GetPlayerAxisName("VerticalRight", _player.playerId)) + Input.GetAxisRaw("Vertical");
		float h = Input.GetAxisRaw(Globals.Instance.ManageTeam.GetPlayerAxisName("HorizontalRight", _player.playerId)) + Input.GetAxisRaw("Horizontal");

		Debug.Log ("Right stick = " + v.ToString () + "_" + h.ToString ());
	}




	
}