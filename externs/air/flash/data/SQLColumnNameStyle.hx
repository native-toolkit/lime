package flash.data;

@:native("flash.data.SQLColumnNameStyle")
extern enum abstract SQLColumnNameStyle(String)
{
	var DEFAULT = "default";
	var LONG = "long";
	var SHORT = "short";
}
