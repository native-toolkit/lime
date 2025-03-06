#include <SDL3/SDL.h>
#include <ui/KeyCode.h>


namespace lime {


	int32_t KeyCode::FromScanCode (int32_t scanCode) {

		return SDL_GetKeyFromScancode ((SDL_Scancode)scanCode, SDL_KMOD_NONE, false);

	}


	int32_t KeyCode::ToScanCode (int32_t keyCode) {

		return SDL_GetScancodeFromKey ((SDL_Keycode)keyCode, SDL_KMOD_NONE);

	}


}