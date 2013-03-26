package sk.yoz.tv.samsung.demo.mvc;

import mmvc.api.IViewContainer;
import mmvc.impl.Context;
import sk.yoz.tv.samsung.demo.mvc.mediators.MainViewMediator;
import sk.yoz.tv.samsung.demo.mvc.commands.DemoSignalCommand;
import sk.yoz.tv.samsung.demo.mvc.models.DemoModel;
import sk.yoz.tv.samsung.demo.view.MainView;
import sk.yoz.tv.samsung.demo.signals.DemoSignal;

class MainContext extends Context
{
	public function new(?contextView:IViewContainer=null)
	{
		super(contextView);
	}
	
	override public function startup()
	{
		commandMap.mapSignalClass(DemoSignal, DemoSignalCommand);
		
		injector.mapSingleton(DemoModel);
		
		mediatorMap.mapView(MainView, MainViewMediator);
	}
}