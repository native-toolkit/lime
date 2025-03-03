package flash.text;

@:native("flash.text.SoftKeyboardType")
extern enum abstract SoftKeyboardType(String)
{
	var CONTACT = "contact";
	var DEFAULT = "default";
	var EMAIL = "email";
	var NUMBER = "number";
	var PUNCTUATION = "punctuation";
	var URL = "url";
}
