using UnityEngine;
using System.Collections;
using UltraReal;

namespace UltraReal
{

	[System.Serializable]
	public class AnimationCurveProperty
	{
		public AnimationCurve flickerCurve;
		public float timeLength = 1f;
		public bool randomStartTime = false;
		float _startTime = 0;
		float _currentTime = 0;

		public float EvaluateStep(float delta)
		{
			if(_startTime==0 && randomStartTime)
				_startTime = Random.Range(0.01f,1f);
			_currentTime += delta;
			return flickerCurve.Evaluate(((_currentTime/timeLength) + _startTime)%1f);
		}
	}


	public class flicker : MonoBehaviour {

		public float lightIntensity = 1f;
		public AnimationCurveProperty flickerCurve;
		
		void Update () {
			GetComponent<Light>().intensity = lightIntensity * flickerCurve.EvaluateStep(Time.deltaTime);
		}

	}

}
