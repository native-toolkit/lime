package flash.security;

@:native("flash.security.SignerTrustSettings")
extern enum abstract SignerTrustSettings(String)
{
	var CODE_SIGNING = "codeSigning";
	var PLAYLIST_SIGNING = "playlistSigning";
	var SIGNING = "signing";
}
