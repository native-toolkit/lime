package flash.media;

@:native("flash.media.MediaType")
extern enum abstract MediaType(String)
{
	var IMAGE = "image";
	var VIDEO = "video";
}
