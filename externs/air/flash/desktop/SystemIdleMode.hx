package flash.desktop;

@:native("flash.desktop.SystemIdleMode")
extern enum abstract SystemIdleMode(String)
{
	var KEEP_AWAKE = "keepAwake";
	var NORMAL = "normal";
}
