package flash.display;

@:native("flash.display.NativeWindowRenderMode")
extern enum abstract NativeWindowRenderMode(String)
{
	var AUTO = "auto";
	var CPU = "cpu";
	var DIRECT = "direct";
	var GPU = "gpu";
}
