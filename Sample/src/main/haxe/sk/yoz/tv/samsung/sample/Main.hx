package sk.yoz.tv.samsung.sample;

import js.Browser;
import js.Lib;
import js.html.KeyboardEvent;
import sk.yoz.tv.samsung.sample.externs.Widget;
import sk.yoz.tv.samsung.sample.externs.TVKeyValue;

class Main
{
	private var widgetAPI:Widget;
	private var tvKey:TVKeyValue;

	public static function main()
	{
		new Main();
	}
	
	public function new()
	{
		untyped __js__("window.Main = this");
		
		widgetAPI = new Widget();
		tvKey = new TVKeyValue();
	}
	
	public function onLoad()
	{
		Lib.alert("onLoad");
		
		enableKeys();
		widgetAPI.sendReadyEvent();
	}
	
	public function onUnload()
	{
		Lib.alert("onUnload");
	}
	
	private function enableKeys()
	{
		Browser.document.getElementById("anchor").focus();
	}
	
	public function keyDown(event:KeyboardEvent)
	{
		var keyCode = event.keyCode;
		Lib.alert("Key pressed:" + keyCode + " " + tvKey.KEY_RETURN);
		
		/*
		switch(keyCode)
		{
			case tvKey.KEY_RETURN:
			case tvKey.KEY_PANEL_RETURN:
				alert("RETURN");
				widgetAPI.sendReturnEvent();
				break;
			case tvKey.KEY_LEFT:
				alert("LEFT");
				break;
			case tvKey.KEY_RIGHT:
				alert("RIGHT");
				break;
			case tvKey.KEY_UP:
				alert("UP");
				break;
			case tvKey.KEY_DOWN:
				alert("DOWN");
				break;
			case tvKey.KEY_ENTER:
			case tvKey.KEY_PANEL_ENTER:
				alert("ENTER");
				break;
			default:
				alert("Unhandled key");
				break;
		}
		*/
	}
}