using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Rigidbody))]
public class LimbConnection : MonoBehaviour
{
    public class LimbCache
    {
        // Transform properties
        public Vector3 Position { get; set; }
        public Quaternion Rotation { get; set; }

        // Character joint properties
        public Rigidbody Connectedbody { get; set; }
        public float BreakForce { get; set; }
    }

    public CharacterJoint LimbJoints;

    private GameObject Limbs;
    
    private LimbCache start = new LimbCache();
    
    void Awake()
    {
        Debug.Log(LimbJoints.name);
        start.Connectedbody = LimbJoints.connectedBody;
        start.BreakForce = LimbJoints.breakForce;

        Limbs = LimbJoints.gameObject;
        start.Position = Limbs.transform.localPosition;
        start.Rotation = Limbs.transform.localRotation;
    }

    // Update is called once per frame
    void Update()
    {
        //Debug.Log(LimbJoints.name);
        if (Input.GetButtonDown("Jump")) ReconnectLimb(Limbs);
    }

    void ReconnectLimb(GameObject limbToConnect)
    {
        // don't connect multiple times
        if (limbToConnect.GetComponent<CharacterJoint>() != null)
            return;

        // position arm before joint is created to ensure connection.
        limbToConnect.transform.localPosition = start.Position;
        limbToConnect.transform.localRotation = start.Rotation;

        var joint = limbToConnect.gameObject.AddComponent<CharacterJoint>();
        joint.connectedBody = start.Connectedbody;
        joint.breakForce = start.BreakForce;
        //Debug.Log(joint.name);
    }
}
