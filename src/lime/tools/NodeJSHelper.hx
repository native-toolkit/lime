package lime.tools;

import hxp.*;
import lime.tools.Architecture;
import lime.tools.HXProject;
import lime.tools.Platform;

class NodeJSHelper
{
	public static function run(project:HXProject, modulePath:String, args:Array<String> = null):Void
	{
		args.unshift(Path.withoutDirectory(modulePath));
		System.runCommand(Path.directory(modulePath), "node", args);
	}
}
