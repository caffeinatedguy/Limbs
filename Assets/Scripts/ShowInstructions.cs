using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

[RequireComponent(typeof(Image))]
public class ShowInstructions : MonoBehaviour
{
    public float SecondsBetweenFrames;
    public float SecondsForFade;
    public List<Sprite> InstructionSteps;

    private Image CachedImage;

    // Use this for initialization
    void Start()
    {
        if (SecondsBetweenFrames == 0)
            SecondsBetweenFrames = .2f;
        if (SecondsForFade == 0)
            SecondsForFade = 6f;

        CachedImage = this.GetComponent<Image>();
        StartCoroutine(displaySteps());
    }

    // Update is called once per frame
    void Update()
    {

    }

    IEnumerator displaySteps()
    {
        // show each frame
        foreach (var step in InstructionSteps)
        {
            CachedImage.sprite = step;
            yield return new WaitForSeconds(SecondsBetweenFrames);
        }

        // fade last frame
        Color imageColor = CachedImage.color;
        while (CachedImage.color.a > 0)
        {
            imageColor.a -= .02f;
            CachedImage.color = imageColor;
            yield return new WaitForSeconds(SecondsForFade / 50);
        }
    }
}
