package sk.yoz.tv.samsung.demo.view;

import js.Browser;

class MainView extends View implements mmvc.api.IViewContainer
{
	public var viewAdded:Dynamic -> Void;
	public var viewRemoved:Dynamic -> Void;

	public function new()
	{
		super();
	}
	
	public function isAdded(view:Dynamic):Bool
	{
		return true;
	}
	
	override public function dispatch(event:String, view:View)
	{
		switch(event)
		{
			case View.ADDED:
			{
				viewAdded(view);
			}
			case View.REMOVED:
			{
				viewRemoved(view);
			}
			default:
			{
				super.dispatch(event, view);
			}
		}
	}
	
	override function initialize()
	{
		super.initialize();
		
		Browser.document.body.appendChild(element);
	}
	
	public function log(message:String)
	{
		element.innerHTML += message + "<br/>";
		element.setAttribute("style", "color:#ff0000;");
	}
}