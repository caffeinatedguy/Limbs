using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

[RequireComponent(typeof(NavMeshAgent))]
public class ZombieAi : MonoBehaviour
{
    public int CurrentLimbCount
    {
        get { return _currentLimbCount; }
        set { SetCurrentLimbCount(value); }
    }
    private int _currentLimbCount = 4;

    public Transform WhosTheDaddy;
    public List<GameObject> Limbs;

    private List<Transform> PlayersToChase = new List<Transform>();
    private NavMeshAgent agent;
    private Transform closestPlayer;
    private float maxSpeed;

    void Start()
    {
        agent = this.GetComponent<NavMeshAgent>();
        maxSpeed = agent.speed;

        determineWhosOnChaseList();
        closestPlayer = this.transform; // default to not chasing anything
        Debug.Log(this.name + " is chasing after " + PlayersToChase.Count + " players: " + string.Join(",", PlayersToChase.Select(p => p.name).ToArray()));
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
        if (Input.GetButtonDown("Fire2")) SetCurrentLimbCount(CurrentLimbCount + 1);
        if (Input.GetButtonDown("Jump")) SetCurrentLimbCount(CurrentLimbCount - 1);
    }

    public void SetCurrentLimbCount(int newNumberLimbs)
    {
        if (newNumberLimbs < 0)
            newNumberLimbs = 0;

        if (CurrentLimbCount != newNumberLimbs)
        {
            // set visibility of limb
            int limbDelta = CurrentLimbCount - newNumberLimbs;
            int limbIndex = CurrentLimbCount - (limbDelta < 0 ? 0 : 1);
            if (limbIndex < Limbs.Count)
                Limbs[limbIndex].SetActive(limbDelta < 0);

            // set effect of losing limb
            agent.speed = maxSpeed * newNumberLimbs / 4;
            //Debug.Log("index" + limbIndex + this.name + " lost " + limbDelta + " limbs. " + newNumberLimbs + " left. New speed " + agent.speed);
            _currentLimbCount = newNumberLimbs;
        }
    }

    private void determineWhosOnChaseList()
    {
        var playerEnumerable = GameObject.FindGameObjectsWithTag("Player")
            .Select(go => go.transform);

        if (WhosTheDaddy != null) // don't chase your daddy
            PlayersToChase = playerEnumerable.Where(t => t != WhosTheDaddy).ToList();
        else
            PlayersToChase = playerEnumerable.ToList();
    }
}
