﻿using UnityEngine;
using System.Collections;

public class PlayerArmController : MonoBehaviour 
{
	[SerializeField]
	private GameObject _limbToMove;

	Player _player;

	[SerializeField]
	GameObject _target;

	[SerializeField]
	Vector3 _rotationAngle;

	[SerializeField]
	Vector3 _forward = Vector3.forward;

	[SerializeField]
	float _offsetY = 4;

	void  Awake ()
	{
		_player = GetComponent<Player> ();
	}

	void Update()
	{
		Transform cameraTransform= Camera.main.transform;

		float v = Input.GetAxisRaw(Globals.Instance.ManageTeam.GetPlayerAxisName("VerticalRight", _player.playerId)) + Input.GetAxisRaw("Vertical");
		float h = Input.GetAxisRaw(Globals.Instance.ManageTeam.GetPlayerAxisName("HorizontalRight", _player.playerId)) + Input.GetAxisRaw("Horizontal");

		if ( (Mathf.Abs (v) + Mathf.Abs (h)) > 0.01f )
		{
			
			
			// Forward vector relative to the camera along the x-z plane	
			Vector3 forward = cameraTransform.TransformDirection (_forward);
			forward.y = 0;
			forward = forward.normalized;

			Vector3 right = new Vector3 (forward.z, 0, -forward.x);
			// Target direction relative to the camera
			Vector3 targetDirection = (h) * right + (v) * forward;

			targetDirection.y += _offsetY;

			_target.transform.position = _limbToMove.transform.position + targetDirection;
		}

		//_limbToMove.transform.LookAt ( _limbToMove.transform.position + targetDirection);

	}




	
}