package sk.yoz.tv.samsung.demo;

import js.Browser;
import js.Lib;
import js.html.KeyboardEvent;

import samsung.tv.v4.common.api.Widget;
import samsung.tv.v4.common.api.TVKeyValue;

import sk.yoz.tv.samsung.demo.mvc.MainContext;
import sk.yoz.tv.samsung.demo.view.MainView;

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
		enableKeys();
		widgetAPI.sendReadyEvent();
		
		var view = new MainView();
		var context = new MainContext(view);
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

		if(keyCode == tvKey.KEY_RETURN)
		{
			Lib.alert("RETURN");
			widgetAPI.sendReturnEvent();
		}
		else if(keyCode == tvKey.KEY_LEFT)
		{
			Lib.alert("LEFT");
		}
		else
		{
			Lib.alert("Unhandled key");
		}
	}
}