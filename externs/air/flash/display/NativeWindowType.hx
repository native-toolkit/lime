package flash.display;

@:native("flash.display.NativeWindowType")
extern enum abstract NativeWindowType(String)
{
	var LIGHTWEIGHT = "lightweight";
	var NORMAL = "normal";
	var UTILITY = "utility";
}
