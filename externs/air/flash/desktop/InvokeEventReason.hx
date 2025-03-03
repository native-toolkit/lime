package flash.desktop;

@:native("flash.desktop.InvokeEventReason")
extern enum abstract InvokeEventReason(String)
{
	var LOGIN = "login";
	var NOTIFICATION = "notification";
	var OPEN_URL = "openUrl";
	var STANDARD = "standard";
}
