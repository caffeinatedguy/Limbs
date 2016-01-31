using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

[RequireComponent(typeof(NavMeshAgent))]
public class ZombieAi : MonoBehaviour
{
    private List<Transform> Players = new List<Transform>();
    private NavMeshAgent agent;
    private Transform closestPlayer;

    void Start()
    {
        Players = GameObject.FindGameObjectsWithTag("Player")
            .Select(go => go.transform)
            .ToList<Transform>();
        agent = this.GetComponent<NavMeshAgent>();

        closestPlayer = this.transform; // default to not chasing anything

        //Debug.Log("Players #" + Players.Count + "\n" + Players[0].name);
    }

    void Update()
    {
        float minMagnitude = float.MaxValue;

        foreach (var player in Players)
        {
            if (player.position.magnitude < minMagnitude)
            {
                minMagnitude = player.position.magnitude;
                closestPlayer = player;
            }
        }

        //Debug.Log(this.name + " is chasing " + closestPlayer.name + " of distance " + closestPlayer.position.magnitude);
        agent.SetDestination(closestPlayer.position);
    }
}
