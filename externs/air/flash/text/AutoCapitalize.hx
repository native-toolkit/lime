package flash.text;

@:native("flash.text.AutoCapitalize")
extern enum abstract AutoCapitalize(String)
{
	var ALL = "all";
	var NONE = "none";
	var SENTENCE = "sentence";
	var WORD = "word";
}
