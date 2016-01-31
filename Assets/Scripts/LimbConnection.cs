using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

[RequireComponent(typeof(Rigidbody))]
public class LimbConnection : MonoBehaviour
{
    public class LimbCache
    {
        public GameObject Limb { get; set; }

        // Transform properties
        public Vector3 Position { get; set; }
        public Quaternion Rotation { get; set; }

        // Character joint properties
        public Rigidbody Connectedbody { get; set; }
        public float BreakForce { get; set; }
    }

    public List<CharacterJoint> LimbJoints;
    
    private List<LimbCache> startValues = new List<LimbCache>();
    
    void Awake()
    {
        //Debug.Log(LimbJoints.name);

        LimbCache currentLimb = new LimbCache();
        foreach (var limbJoint in LimbJoints)
        {
            currentLimb = new LimbCache();
            currentLimb.Connectedbody = limbJoint.connectedBody;
            currentLimb.BreakForce = limbJoint.breakForce;
            currentLimb.Limb = limbJoint.gameObject;
            currentLimb.Position = currentLimb.Limb.transform.localPosition;
            currentLimb.Rotation = currentLimb.Limb.transform.localRotation;
            startValues.Add(currentLimb);
        }
    }

    // Update is called once per frame
    void Update()
    {
        //Debug.Log(LimbJoints.name);
        if (Input.GetButtonDown("Jump")) ReconnectLimb(startValues[0].Limb);
    }

    public void ReconnectLimb(GameObject limbToConnect)
    {
        var chosenLimb = startValues.Where(l => l.Limb == limbToConnect).FirstOrDefault();

        if (chosenLimb != null)
            ReconnectLimb(chosenLimb);
    }

    private void ReconnectLimb(LimbCache limbToConnect)
    {
        // don't connect multiple times
        if (limbToConnect.Limb.GetComponent<CharacterJoint>() != null)
            return;

        // position arm before joint is created to ensure connection.
        limbToConnect.Limb.transform.localPosition = limbToConnect.Position;
        limbToConnect.Limb.transform.localRotation = limbToConnect.Rotation;

        var joint = limbToConnect.Limb.AddComponent<CharacterJoint>();
        joint.connectedBody = limbToConnect.Connectedbody;
        joint.breakForce = limbToConnect.BreakForce;
    }
}
