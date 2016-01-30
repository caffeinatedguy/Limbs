using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Globals
{
    //public Dictionary<PlayerId, ScoreType> Objective = new Dictionary<PlayerId, ScoreType>();
    public TeamManager2 ManageTeam = new TeamManager2();

    public static Globals Instance
    {
        get
        {
            if (instance == null)
                instance = new Globals();
            return instance;
        }
        set { instance = value; }
    }
    private static Globals instance;
}