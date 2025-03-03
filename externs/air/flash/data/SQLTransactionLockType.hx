package flash.data;

@:native("flash.data.SQLTransactionLockType")
extern enum abstract SQLTransactionLockType(String)
{
	var DEFERRED = "deferred";
	var EXCLUSIVE = "exclusive";
	var IMMEDIATE = "immediate";
}
