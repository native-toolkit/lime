package flash.errors;

@:native("flash.errors.SQLErrorOperation")
extern enum abstract SQLErrorOperation(String)
{
	var ANALYZE = "analyze";
	var ATTACH = "attach";
	var BEGIN = "begin";
	var CLOSE = "close";
	var COMMIT = "commit";
	var COMPACT = "compact";
	var DEANALYZE = "deanalyze";
	var DETACH = "detach";
	var EXECUTE = "execute";
	var OPEN = "open";
	var REENCRYPT = "reencrypt";
	var RELEASE_SAVEPOINT = "releaseSavepoint";
	var ROLLBACK = "rollback";
	var ROLLBACK_TO_SAVEPOINT = "rollbackToSavepoint";
	var SCHEMA = "schema";
	var SET_SAVEPOINT = "setSavepoint";
}
