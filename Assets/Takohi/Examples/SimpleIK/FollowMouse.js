#pragma strict

var depth: float;

function Update () {
	var curScreenPoint = new Vector3(Input.mousePosition.x, Input.mousePosition.y, depth - Camera.main.transform.position.z);
    var curPosition = Camera.main.ScreenToWorldPoint(curScreenPoint);
    curPosition.z = depth;
    transform.position = curPosition;
}