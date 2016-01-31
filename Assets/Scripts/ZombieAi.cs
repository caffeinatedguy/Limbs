using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

[RequireComponent(typeof(NavMeshAgent))]
public class ZombieAi : MonoBehaviour
{
    public Transform WhosTheDaddy;

    private List<Transform> PlayersToChase = new List<Transform>();
    private NavMeshAgent agent;
    private Transform closestPlayer;
    private float maxSpeed;
    private int lastLimbCount = 4;

    void Start()
    {
        agent = this.GetComponent<NavMeshAgent>();
        maxSpeed = agent.speed;

        determineWhosOnChaseList();
        closestPlayer = this.transform; // default to not chasing anything
        Debug.Log("Players on list " + PlayersToChase.Count + "\n" + string.Join(",", PlayersToChase.Select(p => p.name).ToArray()));
    }

    void Update()
    {
        float minMagnitude = float.MaxValue;

        foreach (var player in PlayersToChase)
        {
            if (player.position.magnitude < minMagnitude)
            {
                minMagnitude = player.position.magnitude;
                closestPlayer = player;
            }
        }

        //Debug.Log(this.name + " is chasing " + closestPlayer.name + " of distance " + closestPlayer.position.magnitude);
        agent.SetDestination(closestPlayer.position);

        // TODO: delete this test code
        if (Input.GetButtonDown("Fire2")) SetCurrentLimbCount(lastLimbCount + 1);
        if (Input.GetButtonDown("Jump")) SetCurrentLimbCount(lastLimbCount - 1);
    }

    public void SetCurrentLimbCount(int newNumberLimbs)
    {
        if (newNumberLimbs < 0)
            newNumberLimbs = 0;

        if (lastLimbCount != newNumberLimbs)
        {
            agent.speed = maxSpeed * newNumberLimbs / 4;
            Debug.Log(this.name + " lost " + (lastLimbCount - newNumberLimbs) + " limbs. " + newNumberLimbs + " left. New speed " + agent.speed);
            lastLimbCount = newNumberLimbs;
        }
    }

    private void determineWhosOnChaseList()
    {
        var playerEnumerable = GameObject.FindGameObjectsWithTag("Player")
            .Select(go => go.transform)
            .ToList<Transform>();

        if (WhosTheDaddy != null) // don't chase your daddy
            PlayersToChase = playerEnumerable.Where(t => t != WhosTheDaddy).ToList();
        else
            PlayersToChase = playerEnumerable.ToList();
    }
}
