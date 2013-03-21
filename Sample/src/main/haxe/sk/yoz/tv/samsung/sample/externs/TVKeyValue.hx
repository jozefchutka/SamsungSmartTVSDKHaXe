package sk.yoz.tv.samsung.sample.externs;

@:native("Common.API.TVKeyValue")
extern class TVKeyValue
{
	public function new():Void;
	public var KEY_RETURN(default,null):Int;
}