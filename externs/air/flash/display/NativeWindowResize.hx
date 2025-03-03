package flash.display;

@:native("flash.display.NativeWindowResize")
extern enum abstract NativeWindowResize(String)
{
	var BOTTOM = "bottom";
	var BOTTOM_LEFT = "bottomLeft";
	var BOTTOM_RIGHT = "bottomRight";
	var LEFT = "left";
	var NONE = "none";
	var RIGHT = "right";
	var TOP = "top";
	var TOP_LEFT = "topLeft";
	var TOP_RIGHT = "topRight";
}
