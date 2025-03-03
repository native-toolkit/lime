package flash.security;

@:native("flash.security.ReferencesValidationSetting")
extern enum abstract ReferencesValidationSetting(String)
{
	var NEVER = "never";
	var VALID_IDENTITY = "validIdentity";
	var VALID_OR_UNKNOWN_IDENTITY = "validOrUnknownIdentity";
}
