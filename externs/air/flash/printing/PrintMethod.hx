package flash.printing;

@:native("flash.printing.PrintMethod")
extern enum abstract PrintMethod(String)
{
	var AUTO = "auto";
	var BITMAP = "bitmap";
	var VECTOR = "vector";
}
