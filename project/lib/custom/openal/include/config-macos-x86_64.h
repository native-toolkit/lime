/* API declaration export attribute */
#define AL_API  __attribute__((visibility("default")))
#define ALC_API __attribute__((visibility("default")))

/* Define a restrict macro for non-aliased pointers */
#define RESTRICT __restrict

/* Define if HRTF data is embedded in the library */
// #define ALSOFT_EMBED_HRTF_DATA

/* Define if we have the C11 aligned_alloc function */
/* #undef HAVE_ALIGNED_ALLOC */

/* Define if we have the posix_memalign function */
#define HAVE_POSIX_MEMALIGN

/* Define if we have the _aligned_malloc function */
/* #undef HAVE__ALIGNED_MALLOC */

/* Define if we have the proc_pidpath function */
/* #undef HAVE_PROC_PIDPATH */

/* Define if we have the getopt function */
/* #undef HAVE_GETOPT */

/* Define if we have SSE CPU extensions */
#define HAVE_SSE 1
#define HAVE_SSE2 1
#define FORCE_ALIGN __attribute__((force_align_arg_pointer))
#define HAVE_SSE3 1
#define HAVE_SSE4_1 0

/* Define if we have ARM Neon CPU extensions */
#define HAVE_NEON 0

/* Define if we have the ALSA backend */
#define HAVE_ALSA 0

/* Define if we have the OSS backend */
#define HAVE_OSS 0

/* Define if we have the Solaris backend */
#define HAVE_SOLARIS 0

/* Define if we have the SndIO backend */
#define HAVE_SNDIO 0

/* Define if we have the QSA backend */
#define HAVE_QSA 0

/* Define if we have the WASAPI backend */
#define HAVE_WASAPI 0

/* Define if we have the DSound backend */
#define HAVE_DSOUND 0

/* Define if we have the Windows Multimedia backend */
#define HAVE_WINMM 0

/* Define if we have the PortAudio backend */
#define HAVE_PORTAUDIO 0

/* Define if we have the PulseAudio backend */
#define HAVE_PULSEAUDIO 0

/* Define if we have the JACK backend */
#define HAVE_JACK 0

/* Define if we have the CoreAudio backend */
#define HAVE_COREAUDIO 1

/* Define if we have the OpenSL backend */
#define HAVE_OPENSL 0

/* Define if we have the Wave Writer backend */
#define HAVE_WAVE 1

/* Define if we have the SDL2 backend */
/* #undef HAVE_SDL2 */

/* Define if we have the stat function */
#define HAVE_STAT

/* Define to the size of a long int type */
#define SIZEOF_LONG 8

/* Define if we have GCC's format attribute */
#define HAVE_GCC_FORMAT

/* Define if we have dlfcn.h */
#define HAVE_DLFCN_H

/* Define if we have pthread_np.h */
/* #undef HAVE_PTHREAD_NP_H */

/* Define if we have malloc.h */
/* #undef HAVE_MALLOC_H */

/* Define if we have dirent.h */
#define HAVE_DIRENT_H

/* Define if we have cpuid.h */
#define HAVE_CPUID_H

/* Define if we have intrin.h */
/* #undef HAVE_INTRIN_H */

/* Define if we have sys/sysconf.h */
/* #undef HAVE_SYS_SYSCONF_H */

/* Define if we have guiddef.h */
/* #undef HAVE_GUIDDEF_H */

/* Define if we have initguid.h */
/* #undef HAVE_INITGUID_H */

/* Define if we have GCC's __get_cpuid() */
#define HAVE_GCC_GET_CPUID

/* Define if we have the __cpuid() intrinsic */
/* #undef HAVE_CPUID_INTRINSIC */

/* Define if we have the _BitScanForward64() intrinsic */
/* #undef HAVE_BITSCANFORWARD64_INTRINSIC */

/* Define if we have the _BitScanForward() intrinsic */
/* #undef HAVE_BITSCANFORWARD_INTRINSIC */

/* Define if we have pthread_setschedparam() */
#define HAVE_PTHREAD_SETSCHEDPARAM

/* Define if we have pthread_setname_np() */
/* #undef HAVE_PTHREAD_SETNAME_NP */

/* Define if pthread_setname_np() only accepts one parameter */
/* #undef PTHREAD_SETNAME_NP_ONE_PARAM */

/* Define if pthread_setname_np() accepts three parameters */
/* #undef PTHREAD_SETNAME_NP_THREE_PARAMS */

/* Define if we have pthread_set_name_np() */
/* #undef HAVE_PTHREAD_SET_NAME_NP */
