
ifeq ("$(ARCHS)","normal")
	ARCHS = arm64
endif

HAXE_BUILDS := $(ARCHS:%=build-haxe-%)

ifeq ("$(CONFIGURATION)","Debug")
   BUILD_STYLE := Debug
endif

ifeq ("$(BUILD_STYLE)","Debug")
   DEBUG := -debug
   CONFIG := Debug
else
   DEBUG :=
   CONFIG := Release
endif

HAXE_OS := $(PLATFORM_NAME)
ifeq ("$(HAXE_OS)","appletvsimulator")
   HAXE_OS := appletvsim
endif
CONFIG := $(CONFIG)-$(HAXE_OS)

LIB_DEST := $(DEBUG)/libApplicationMain.a

ifeq ("$(ACTION)","clean")
default: clean
else
default: $(HAXE_BUILDS)
endif

default: debug_print

debug_print:
	@echo "Make $(HAXE_BUILDS)"

build-haxe-x86_64:
	@echo "Haxe simulator build: $(CONFIG)-64"
	haxe Build.hxml -D simulator -D HXCPP_M64 -cpp build/$(CONFIG)-64 $(DEBUG)
	cd build/$(CONFIG)-64; ::HAXELIB_PATH:: export HXCPP_NO_COLOR=1; haxelib run ::CPP_BUILD_LIBRARY:: Build.xml $(DEBUG) -options Options.txt
	cp build/$(CONFIG)-64/::CPP_LIBPREFIX::ApplicationMain$(DEBUG).appletvsim-64.a ../lib/x86_64$(LIB_DEST)
	touch ../Classes/Main.mm

build-haxe-arm64:
	@echo "Haxe device build: $(CONFIG)-64"
	haxe Build.hxml -D HXCPP_ARM64 -cpp build/$(CONFIG)-64 $(DEBUG)
	cd build/$(CONFIG)-64; ::HAXELIB_PATH:: export HXCPP_NO_COLOR=1; haxelib run ::CPP_BUILD_LIBRARY:: Build.xml $(DEBUG) -options Options.txt
	cp build/$(CONFIG)-64/::CPP_LIBPREFIX::ApplicationMain$(DEBUG).appletvos-64.a ../lib/arm64$(LIB_DEST)
	touch ../Classes/Main.mm

clean:
	rm -rf build

.PHONY: default debug_print clean $(HAXE_BUILDS)
.SUFFIXES:
