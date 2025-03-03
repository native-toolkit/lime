package flash.desktop;

@:native("flash.desktop.NativeDragActions")
extern enum abstract NativeDragActions(String)
{
	var COPY = "copy";
	var LINK = "link";
	var MOVE = "move";
	var NONE = "none";
}
