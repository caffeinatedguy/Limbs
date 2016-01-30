using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Linq;
using System.Collections.Generic;

public class SwapObjectives : MonoBehaviour
{
    [SerializeField]
    private float SecondsToActivate = 5;
    [SerializeField]
    private Image RadialSprite;

    private float secondsLeftToActivate;
    private Player firstButtonPusher;


    #region [ Unity Events ]
    void Start()
    {
        secondsLeftToActivate = SecondsToActivate;
    }

    void Update()
    {
        if (firstButtonPusher != null)
        {
            secondsLeftToActivate -= Time.deltaTime;
            if (secondsLeftToActivate <= 0)
                swap();
            else
                RadialSprite.fillAmount = 1 - secondsLeftToActivate / this.SecondsToActivate;
        }
    }

    internal void OnTriggerEnter(Collider other)
    {
        Player player = other.GetComponent<Player>();
        if (player != null && firstButtonPusher == null)
        {
            firstButtonPusher = player;
        }
    }

    internal void OnTriggerExit(Collider other)
    {
        Player player = other.GetComponent<Player>();
        if (player != null && firstButtonPusher == player)
        {
            reset();
        }
    }
    #endregion [ Unity Events ]

    private void swap()
    {
        reset();
        Debug.Log("Swapping! (if there is more than 1 team)");
        var popup = GameObject.FindObjectOfType<Popup>();
        if (popup != null)
            popup.Show("Objectives Swapped!");

        //var team1Objective = this.teamManager.teams[0].objective;
        //var team2Objective = this.teamManager.teams[1].objective;

        var team1Objective = Globals.Instance.ManageTeam[0].Objective;
        var team2Objective = Globals.Instance.ManageTeam[1].Objective;

        // after all that, it's finally time to swap!
        Debug.Log("before swap Team1 obj: " + team1Objective + " Team2 obj: " + team2Objective);

        Globals.Instance.ManageTeam[0].Objective = team2Objective;
        Globals.Instance.ManageTeam[1].Objective = team1Objective;

        Debug.Log("after swap Team1 obj: " + Globals.Instance.ManageTeam[0].Objective + " Team2 obj: " + Globals.Instance.ManageTeam[1].Objective);
    }

    private void reset()
    {
        firstButtonPusher = null;
        RadialSprite.fillAmount = 0f;
        secondsLeftToActivate = this.SecondsToActivate;
    }
}
