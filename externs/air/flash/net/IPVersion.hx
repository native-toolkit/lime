package flash.net;

@:native("flash.net.IPVersion")
extern enum abstract IPVersion(String)
{
	var IPV4 = "ipv4";
	var IPV6 = "ipv6";
}
