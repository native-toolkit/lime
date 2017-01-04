package lime.system;


#if flash
import flash.desktop.Clipboard in FlashClipboard;
#elseif js
import js.Browser.document;
#end

#if !macro
@:build(lime.system.CFFI.build())
#end

#if !lime_debug
@:fileXml('tags="haxe,release"')
@:noDebug
#end


class Clipboard {
	
	
	public static var text (get, set):String;

	#if js
	private static var _text : String;
	#end
	
	
	
	
	// Get & Set Methods
	
	
	
	
	private static function get_text ():String {
		
		#if (lime_cffi && !macro)
		return lime_clipboard_get_text ();
		#elseif flash
		if (FlashClipboard.generalClipboard.hasFormat (TEXT_FORMAT)) {
			
			return FlashClipboard.generalClipboard.getData (TEXT_FORMAT);
			
		}
		#elseif js
		return _text;
		#end
		
		return null;
		
	}
	
	
	private static function set_text (value:String):String {
		
		#if (lime_cffi && !macro)
		lime_clipboard_set_text (value);
		return value;
		
		#elseif flash
		FlashClipboard.generalClipboard.setData (TEXT_FORMAT, value);
		return value;
		
		#elseif js
		_text = value;
		
		#if html5
		if (document.queryCommandEnabled("copy"))
			document.execCommand("copy");
		#end
		
		return value;
		#end
		
		return null;
		
	}
	
	
	
	
	// Native Methods
	
	
	
	
	#if (lime_cffi && !macro)
	@:cffi private static function lime_clipboard_get_text ():Dynamic;
	@:cffi private static function lime_clipboard_set_text (text:String):Void;
	#end
	
	
}