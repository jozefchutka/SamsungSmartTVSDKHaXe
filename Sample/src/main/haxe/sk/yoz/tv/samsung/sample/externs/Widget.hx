package sk.yoz.tv.samsung.sample.externs;

@:native("Common.API.Widget")
extern class Widget
{
	public function new():Void;
	public function sendReadyEvent():Void;
}