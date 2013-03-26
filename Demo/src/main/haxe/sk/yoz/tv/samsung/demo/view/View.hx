package sk.yoz.tv.samsung.demo.view;

import msignal.Signal;
import js.html.Element;
import js.Browser;

class View
{
	inline public static var ADDED:String = "added";
	inline public static var REMOVED:String = "removed";

	static var idCounter:Int = 0;
	
	public var id(default, null):String;
	public var parent(default, null):View;
	public var signal(default, null):Signal2<String, View>;
	public var element(default, null):Element;
	
	var children:Array<View>;
	
	public function new()
	{
		id = "view" + (idCounter ++);
	
		children = [];
		signal = new Signal2<String, View>();
		
		initialize();
	}
	
	public function dispatch(event:String, view:View)
	{
		if(view == null)
			view = this;
		signal.dispatch(event, view);
	}
	
	public function addChild(view:View)
	{
		view.signal.add(this.dispatch);
		view.parent = this;
		
		children.push(view);
		element.appendChild(view.element);
		dispatch(ADDED, view);
	}
	
	public function removeChild(view:View)
	{
		if(!children.remove(view))
			return;
		
		view.signal.remove(this.dispatch);
		view.parent = null;
		
		element.removeChild(view.element);
		dispatch(REMOVED, view);
	}
	
	function initialize()
	{
		element = Browser.document.createElement("div");
		element.setAttribute("id", id);
	}
}