package flash.security;

@:native("flash.security.RevocationCheckSettings")
extern enum abstract RevocationCheckSettings(String)
{
	var ALWAYS_REQUIRED = "alwaysRequired";
	var BEST_EFFORT = "bestEffort";
	var NEVER = "never";
	var REQUIRED_IF_AVAILABLE = "requiredIfAvailable";
}
