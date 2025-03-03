package flash.notifications;

@:native("flash.notifications.NotificationStyle")
extern enum abstract NotificationStyle(String)
{
	var ALERT = "alert";
	var BADGE = "badge";
	var SOUND = "sound";
}
