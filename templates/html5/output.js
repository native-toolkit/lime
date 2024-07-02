(function ($hx_exports, $global) {
	"use strict";

	var $hx_script = (function (exports, global) { ::SOURCE_FILE:: });

	if (typeof self !== "undefined" && self.constructor.name.includes("Worker")) {
		// No need for exports in a worker context, just initialize statics.
		$hx_script({}, $global);
	} else {
		$hx_exports.lime = $hx_exports.lime || {};
		$hx_exports.lime.$scripts = $hx_exports.lime.$scripts || {};
		$hx_exports.lime.$scripts["::APP_FILE::"] = $hx_script;

		$hx_exports.lime.embed = function (projectName) {
			var exports = {};

			var script = $hx_exports.lime.$scripts[projectName];
			if (!script) throw Error("Cannot find project name \"" + projectName + "\"");
			script(exports, $global);

			for (var key in exports) $hx_exports[key] = $hx_exports[key] || exports[key];

			var lime = exports.lime || window.lime;
			if (lime && lime.embed && this !== lime.embed) lime.embed.apply(lime, arguments);

			return exports;
		};
	}

	// AMD compatibility: If define() is present we need to
	// - call it, to define our module
	// - disable it so that the embedded libraries register themselves in the global scope!
	if (typeof define === "function" && define.amd) {
		define([], function () { return $hx_exports.lime; });
		define.__amd = define.amd;
		define.amd = null;
	}
})(typeof exports !== "undefined" ? exports : typeof define === "function" && define.amd ? {} : typeof globalThis !== "undefined" ? globalThis : self,
	typeof globalThis !== "undefined" ? globalThis : self);

::if embeddedLibraries::::foreach embeddedLibraries::
::__current__::::end::::end::

if (typeof define === "function" && define.__amd) {
	define.amd = define.__amd;
	delete define.__amd;
}
