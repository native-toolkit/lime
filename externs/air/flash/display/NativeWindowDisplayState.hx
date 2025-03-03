package flash.display;

@:native("flash.display.NativeWindowDisplayState")
extern enum abstract NativeWindowDisplayState(String)
{
	var MAXIMIZED = "maximized";
	var MINIMIZED = "minimized";
	var NORMAL = "normal";
}
