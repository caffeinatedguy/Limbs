// --------------------------------
// <copyright file="GameOverScreen.cs" company="Rumor Games">
//     Copyright (C) Rumor Games, LLC.  All rights reserved.
// </copyright>
// --------------------------------

using System.Collections;
using UnityEngine.UI;
using UnityEngine;

/// <summary>
/// GameOverScreen class.
/// </summary>
public class GameOverScreen : MonoBehaviour
{
    public float secondsToWait = 5f;
    public string menuToLoad = "Menu";
    public Image panel;
    public Text text;

    public void Show(string message)
    {
        var soundEffectManager = FindObjectOfType<SoundEffectManager>();
        this.panel.enabled = true;
        text.text = message;
        StartCoroutine(this.LoadMenu());
    }

    public IEnumerator LoadMenu()
    {
        yield return new WaitForSeconds(this.secondsToWait);
        Globals.Instance.ManageTeam.Reset();
        Application.LoadLevel(this.menuToLoad);
    }
}