package flash.data;

@:native("flash.data.SQLMode")
extern enum abstract SQLMode(String)
{
	var CREATE = "create";
	var READ = "read";
	var UPDATE = "update";
}
