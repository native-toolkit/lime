package flash.security;

@:native("flash.security.SignatureStatus")
extern enum abstract SignatureStatus(String)
{
	var INVALID = "invalid";
	var UNKNOWN = "unknown";
	var VALID = "valid";
}
