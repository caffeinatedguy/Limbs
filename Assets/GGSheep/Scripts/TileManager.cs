using UnityEngine;
using System.Collections;

public class TileManager : MonoBehaviour 
{
	public GameObject _sheep;
	public GameObject _pen;

	[System.Serializable]
	public struct BoundPair
	{
		public BoundPair(int min,int max)
		{
			_min = min;
			_max = max;
		}

		public int GetRandom()
		{
			return Random.Range(_min,_max);
		}

		public int _min;
		public int _max;
	};

	static public TileManager instance;

	public GameObject _levelGenerator;
	public bool _continuousGeneration;
	private float m_timeBetweenGeneration = 3.0f;
	public Vector3 m_playerOffset = new Vector3(0.0f,10.0f,0.0f);


	System.Collections.Generic.KeyValuePair<int, int> rangeSheep; 
	public BoundPair boundSheep = new BoundPair(6,24);
	public BoundPair boundPen = new BoundPair(1,4);


	public float _respawnHeight = -5.0f;

	public float RespawnHeight {
		get {
			return _respawnHeight;
		}
		set {
			_respawnHeight = value;
		}
	}

	private bool _runningGeneration = false;

	public bool RunningGeneration {
		get {
			return _runningGeneration;
		}
		set 
		{
			if(_runningGeneration != value )
			{
				_runningGeneration = value;
				if(_runningGeneration )
				{
					InvokeRepeating( "PopulateMapRaycast", 0.0f, m_timeBetweenGeneration);
				}
				else
				{
					CancelInvoke("PopulateMapRaycast");
				}
			}
		}
	}

	// Use this for initialization
	void Start () 
	{
		instance = this;


		SpawnTiles();
		SpawnSheep();
		SpawnPens();

	}

	void SpawnSheep ()
	{
		int numberSheep = boundSheep.GetRandom(); 
		for(int i=0;i<numberSheep;++i)
		{
			Vector3 pos = GetSpawnPosition();
			Sheep sheep = (Instantiate(_sheep,pos,Quaternion.identity) as GameObject).GetComponent<Sheep>();
			sheep.transform.parent = gameObject.transform;
		}
	}

	void SpawnPens ()
	{
		int numberPen = boundPen.GetRandom(); 
		for(int i=0;i<numberPen;++i)
		{
			Vector3 pos = GetSpawnPosition();
			GameObject pen = (Instantiate(_pen,pos,Quaternion.identity) as GameObject);
			pen.transform.parent = gameObject.transform;
		}
	}
	
	// Update is SpawnTilesame
	void Update () 
	{
		RunningGeneration = _continuousGeneration;
	}

	void ClearMap()
	{
		_tileCount = 0;

		if( m_tiles != null )
		{
			for (int j=0; j<_height; ++j) 
			{
				for (int i=0; i<_width; ++i) 
				{
					Destroy(m_tiles[j,i]);
				}
			}
		}
	}

	public Vector3 GetSpawnPosition()
	{
		int spawnIndex = Random.Range (0, _tileCount-1);
		int count = 0;

		for (int j=0; j<_height; ++j) 
		{
			for (int i=0; i<_width; ++i) 
			{
				if( m_tiles[j,i] != null && count++ == spawnIndex)
				{
					return m_tiles[j,i].transform.position + m_playerOffset;
				}
			}
		}
		return Vector3.zero;
	}

	void SpawnTiles()
	{
		//Destory any previous map
		ClearMap ();

		//Calculate the start tile position
		Vector3 vStart = new Vector3 (-(float)_width * 0.5f, 0.0f, -(float)_height * 0.5f);
		
		
		m_tiles = new TileGround[_height,_width];
		for (int j=0; j<_height; ++j) 
		{
			for (int i=0; i<_width; ++i) 
			{
				Vector3 origin = vStart + new Vector3((float)i,0.0f,(float)j);

				int mask = (1 << 10);
				if( Physics.Raycast(origin,new Vector3(0.0f,-1.0f,0.0f),1000.0f,mask) )
				{
					m_tiles[j,i] = (TileGround)Instantiate(_tileGround,origin,Quaternion.identity);
					m_tiles[j,i].transform.parent = gameObject.transform;
					m_tiles[j,i].SetState((ETileState)Random.Range(0, 2));
					_tileCount++;
				}
			}
		}

	}

	public TileGround _tileGround; 

	public TileGround[,] m_tiles;

	public int _width = 30;
	public int _height = 15;

	private int _tileCount = 0;
}
