package flash.media;

@:native("flash.media.CameraPosition")
extern enum abstract CameraPosition(String)
{
	var BACK = "back";
	var FRONT = "front";
	var UNKNOWN = "unknown";
}
