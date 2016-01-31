using UnityEngine;
using System.Collections;

public class ControlDoll : MonoBehaviour
{
    public Rigidbody LeftLeg;
    public Rigidbody RightLeg;
    public Rigidbody LeftArm;
    public Rigidbody RightArm;

    public float force;
    public bool AlwaysUseLeftLeg;

    void Start()
    {
        if (force == 0)
            force = 25000;
    }

    void Update()
    {
        Vector3 AttractTowards = mostActiveController();

        if (Mathf.Abs(AttractTowards.magnitude) > float.Epsilon)
        {
            AttractTowards.y = .5f; // Add some up force to reduce drag
            //Debug.Log("Adding " + AttractTowards);

            if (Input.GetButton("Fire1"))
            {
                RightArm.AddForce(AttractTowards * force * Time.deltaTime);
            }

            if (Input.GetButton("Fire3"))
            {
                LeftArm.AddForce(AttractTowards * force * Time.deltaTime);
            }

            if (Input.GetButton("Fire2"))
            {
                RightLeg.AddForce(AttractTowards * force * Time.deltaTime);
            }

            if (Input.GetButton("Jump") || AlwaysUseLeftLeg)
            {
                LeftLeg.AddForce(AttractTowards * force * Time.deltaTime);
            }
        }
    }

    private Vector3 mostActiveController()
    {
        Vector3 keyboard = new Vector3(
            Input.GetAxis("HorizontalArrows"),
            0f,
            Input.GetAxis("VerticalArrows"));
        Vector3 controller1 = new Vector3(
            Input.GetAxis("HorizontalGP1"),
            0f,
            Input.GetAxis("VerticalGP1"));

        if (Mathf.Abs(keyboard.magnitude) > Mathf.Abs(controller1.magnitude))
            return keyboard;
        else
            return controller1;
    }
}
