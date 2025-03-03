package flash.display;

@:native("flash.display.StageOrientation")
extern enum abstract StageOrientation(String)
{
	var DEFAULT = "default";
	var ROTATED_LEFT = "rotatedLeft";
	var ROTATED_RIGHT = "rotatedRight";
	var UNKNOWN = "unknown";
	var UPSIDE_DOWN = "upsideDown";
}
