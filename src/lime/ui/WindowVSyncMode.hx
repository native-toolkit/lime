package lime.ui;

/**
	An enum containing swap intervals for the current window.
**/
#if (haxe_ver >= 4.0) enum #else @:enum #end abstract WindowVSyncMode(Int) from Int to Int from UInt to UInt
{
	/**
		Disable VSync, and push immediate updates.
	**/
	public var OFF = 0;

	/**
		Enable VSync, and synchronize with the monitor's refresh rate
	**/
	public var ON = 1;

	/**
		Enable adaptive VSync, and synchronize with the monitor's refresh rate
		unless there is a frame rate drop
	**/
	public var ADAPTIVE = -1;
}