package flash.data;

@:native("flash.data.SQLCollationType")
extern enum abstract SQLCollationType(String)
{
	var BINARY = "binary";
	var NO_CASE = "noCase";
}
