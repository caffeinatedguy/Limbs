using UnityEngine;
using System.Collections;

public class ControlDoll : MonoBehaviour
{
    public Rigidbody LeftLeg;
    public Rigidbody RightLeg;
    public Rigidbody LeftArm;
    public Rigidbody RightArm;

    public float force;

    void Start()
    {
        if (force == 0)
            force = 25000;
    }

    void Update()
    {
        Vector3 AnalogPosition = new Vector3(
            Input.GetAxis("Horizontal"),
            0f,
            Input.GetAxis("Vertical"));

        if (Mathf.Abs(AnalogPosition.magnitude) > float.Epsilon)
        {
            AnalogPosition.y = .5f; // Add some up force to reduce drag
            Debug.Log("Adding " + AnalogPosition + " to " + RightArm.velocity);

            if (Input.GetButton("Fire1"))
            {
                RightArm.AddForce(AnalogPosition * force * Time.deltaTime);
            }

            if (Input.GetButton("Fire3"))
            {
                LeftArm.AddForce(AnalogPosition * force * Time.deltaTime);
            }

            if (Input.GetButton("Fire2"))
            {
                RightLeg.AddForce(AnalogPosition * force * Time.deltaTime);
            }

            if (Input.GetButton("Jump"))
            {
                LeftLeg.AddForce(AnalogPosition * force * Time.deltaTime);
            }
        }	
    }
}
