package flash.media;

@:native("flash.media.AudioPlaybackMode")
extern enum abstract AudioPlaybackMode(String)
{
	var AMBIENT = "ambient";
	var MEDIA = "media";
	var VOICE = "voice";
}
