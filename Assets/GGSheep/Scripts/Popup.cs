using UnityEngine.UI;
using System.Collections;
using UnityEngine;

/// <summary>
/// Popup class.
/// </summary>
public class Popup : MonoBehaviour
{
	private Text text;

    /// <summary>
    /// Initialize script state.
    /// </summary>
    internal void Start()
    {
		this.text = this.GetComponent<Text>();
    }

	public void Show(string message, bool animate = true)
	{
		this.text.text = message;
        this.GetComponent<Animation>().Stop();
        this.GetComponent<Animation>().Rewind();
        if (animate)
		{
			this.GetComponent<Animation>().Play();
		} 
		else
		{
			this.text.enabled = true;
			Invoke("Hide", 10f);
		}
	}

	private void Hide()
	{
		this.text.enabled = false;
	}
}