package flash.events;

@:native("flash.events.TouchEventIntent")
extern enum abstract TouchEventIntent(String)
{
	var ERASER = "eraser";
	var PEN = "pen";
	var UNKNOWN = "unknown";
}
