package flash.display3D;

@:native("flash.display3D.Context3DProfile")
extern enum abstract Context3DProfile(String)
{
	var BASELINE = "baseline";
	var BASELINE_CONSTRAINED = "baselineConstrained";
	var BASELINE_EXTENDED = "baselineExtended";
	var STANDARD = "standard";
	var STANDARD_CONSTRAINED = "standardConstrained";
	var STANDARD_EXTENDED = "standardExtended";
	#if air
	var ENHANCED = "enhanced";
	#end
}
