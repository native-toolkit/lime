package flash.filesystem;

@:native("flash.filesystem.FileMode")
extern enum abstract FileMode(String)
{
	var APPEND = "append";
	var READ = "read";
	var UPDATE = "update";
	var WRITE = "write";
}
