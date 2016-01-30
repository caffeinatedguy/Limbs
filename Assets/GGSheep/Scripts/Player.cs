using System.Collections;
using UnityEngine;
using System.Collections.Generic;


public enum PlayerStates
{
	Trample,
	PushPen,
	PushSheep,
    PushButton,
};

/// <summary>
/// Player class.
/// </summary>
public class Player : Respawnable
{
	public PlayerId playerId;
	public PlayerStates playerState = PlayerStates.Trample;
    public Material[] m_hatMaterials;
    public int _hatMaterialIndex = 1;

	public Transform playerHead;
	public float minPlayerHeadSize = 1.0f;
	public float maxPlayerHeadSize = 2.0f;
    
    public SkinnedMeshRenderer meshRenderer;
	
	//public List<PlayerStates> _stateList; //@@ Add list of states to fix potential bugs with sheep shed push

	public PlayerStates PlayerState 
	{
		get {
			return playerState;
		}
		set {
			playerState = value;
		}
	}

    float GetHeadScale()
    {
		float teamScore = 1.0f;//this.scoreManager.GetTeamScore(this.playerId);
        //float total = (float)this.scoreManager.GetTotalScore ();

        //float scale = total < float.Epsilon ? 0.0f : (this.scoreManager.GetTotalScore.GetScore (playerId) / total);
        //return minPlayerHeadSize + (maxPlayerHeadSize - minPlayerHeadSize) * scale;
		return 1.0f;//minPlayerHeadSize + (maxPlayerHeadSize - minPlayerHeadSize) * Mathf.Clamp((float)teamScore / this.scoreManager.maxHeadSizeReferenceScore, 0f, 1f);
    }

	public override void Update () 
	{
		base.Update ();

		//float scale = GetHeadScale();

		//playerHead.transform.localScale = new Vector3(scale,scale,scale);
	}

	private ScoreManager scoreManager;

    /// <summary>
    /// Initialize script state.
    /// </summary>
    internal void Start()
    {
		this.scoreManager = FindObjectOfType<ScoreManager>();

        //@@ Potential memory leak
        //Material[] copyMaterials = meshRenderer.materials;

        //copyMaterials[_hatMaterialIndex] = m_hatMaterials[(int)playerId - 1];

        //meshRenderer.materials = copyMaterials;

    }
	

	public void Score(ScoreType scoreType)
	{
		this.scoreManager.Score(this.playerId, scoreType);
	}
}