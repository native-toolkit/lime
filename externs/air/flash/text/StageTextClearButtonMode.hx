package flash.text;

@:native("flash.text.StageTextClearButtonMode")
extern enum abstract StageTextClearButtonMode(String)
{
	var ALWAYS = "always";
	var NEVER = "never";
	var UNLESS_EDITING = "unlessEditing";
	var WHILE_EDITING = "whileEditing";
}
