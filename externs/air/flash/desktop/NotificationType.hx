package flash.desktop;

@:native("flash.desktop.NotificationType")
extern enum abstract NotificationType(String)
{
	var CRITICAL = "critical";
	var INFORMATIONAL = "informational";
}
