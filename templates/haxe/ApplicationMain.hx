package;

import ::APP_MAIN::;

@:access(lime.app.Application)
@:access(lime.system.System)

@:dox(hide) class ApplicationMain
{
	private var _allowHighDPI = ::allowHighDPI::;
	private var _alwaysOnTop = ::alwaysOnTop::;
	private var _borderless = ::borderless::;
	private var _frameRate = ::fps::;
	private var _fullscreen = ::fullscreen::;
	private var _height = ::height::;
	private var _hidden = ::hidden::;
	private var _maximized = ::maximized::;
	private var _parameters = ::parameters::;
	private var _resizable = ::resizable::;
	private var _title = "::title::";
	private var _width = ::width::;
	private var _x = ::x::;
	private var _y = ::y::;
	
	private var _antialiasing = ::antialiasing::;
	private var _background = ::background::;
	private var _colorDepth = ::colorDepth::;
	private var _depth = ::depthBuffer::;
	private var _hardware = ::hardware::;
	private var _stencil = ::stencilBuffer::;
	private var _vsync = ::vsync::;
	
	public static function main()
	{
		lime.system.System.__registerEntryPoint("::APP_FILE::", create);

		#if (!html5 || munit)
		create(null);
		#end
	}

	public static function create(config:Dynamic):Void
	{
		#if !disable_preloader_assets
		ManifestResources.init(config);
		#end

		#if !munit
		var app = new ::APP_MAIN::();
		app.meta.set("build", "::meta.buildNumber::");
		app.meta.set("company", "::meta.company::");
		app.meta.set("file", "::APP_FILE::");
		app.meta.set("name", "::meta.title::");
		app.meta.set("packageName", "::meta.packageName::");
		app.meta.set("version", "::meta.version::");

		#if !flash
		::foreach windows::
		var attributes:lime.ui.WindowAttributes =
			{
				allowHighDPI: _allowHighDPI,
				alwaysOnTop: _alwaysOnTop,
				borderless: _borderless,
				// display: ::display::,
				element: null,
				frameRate: _frameRate,
				#if !web fullscreen: _fullscreen, #end
				height: _height,
				hidden: #if munit true #else _hidden #end,
				maximized: _maximized,
				minimized: _minimized,
				parameters: _parameters,
				resizable: _resizable,
				title: _title,
				width: _width,
				x: _x,
				y: _y,
			};

		attributes.context =
			{
				antialiasing: _antialiasing,
				background: _background,
				colorDepth: _colorDepth,
				depth: _depth,
				hardware: _hardware,
				stencil: _stencil,
				type: null,
				vsync: _vsync
			};

		if (app.window == null)
		{
			if (config != null)
			{
				for (field in Reflect.fields(config))
				{
					if (Reflect.hasField(attributes, field))
					{
						Reflect.setField(attributes, field, Reflect.field(config, field));
					}
					else if (Reflect.hasField(attributes.context, field))
					{
						Reflect.setField(attributes.context, field, Reflect.field(config, field));
					}
				}
			}

			#if sys
			lime.system.System.__parseArguments(attributes);
			#end
		}

		app.createWindow(attributes);
		::end::
		#elseif air
		app.window.title = "::meta.title::";
		#else
		app.window.context.attributes.background = ::WIN_BACKGROUND::;
		app.window.frameRate = ::WIN_FPS::;
		#end
		#end

		// preloader.create ();

		#if !disable_preloader_assets
		for (library in ManifestResources.preloadLibraries)
		{
			app.preloader.addLibrary(library);
		}

		for (name in ManifestResources.preloadLibraryNames)
		{
			app.preloader.addLibraryName(name);
		}
		#end

		app.preloader.load();

		#if !munit
		start(app);
		#end
	}

	public static function start(app:lime.app.Application = null):Void
	{
		#if !munit

		var result = app.exec();

		#if (sys && !ios && !nodejs && !webassembly)
		lime.system.System.exit(result);
		#end

		#else

		new ::APP_MAIN::();

		#end
	}

	@:noCompletion @:dox(hide) public static function __init__()
	{
		var init = lime.app.Application;

		#if neko
		// Copy from https://github.com/HaxeFoundation/haxe/blob/development/std/neko/_std/Sys.hx#L164
		// since Sys.programPath () isn't available in __init__
		var sys_program_path =
			{
				var m = neko.vm.Module.local().name;
				try
				{
					sys.FileSystem.fullPath(m);
				}
				catch (e:Dynamic)
				{
					// maybe the neko module name was supplied without .n extension...
					if (!StringTools.endsWith(m, ".n"))
					{
						try
						{
							sys.FileSystem.fullPath(m + ".n");
						}
						catch (e:Dynamic)
						{
							m;
						}
					}
					else
					{
						m;
					}
				}
			};

		var loader = new neko.vm.Loader(untyped $loader);
		loader.addPath(haxe.io.Path.directory(#if (haxe_ver >= 3.3) sys_program_path #else Sys.executablePath() #end));
		loader.addPath("./");
		loader.addPath("@executable_path/");
		#end
	}
}
