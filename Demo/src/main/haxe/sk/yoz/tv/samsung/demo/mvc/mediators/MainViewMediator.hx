package sk.yoz.tv.samsung.demo.mvc.mediators;

import mmvc.impl.Mediator;
import sk.yoz.tv.samsung.demo.view.MainView;
import sk.yoz.tv.samsung.demo.signals.DemoSignal;
import sk.yoz.tv.samsung.demo.mvc.models.DemoModel;

class MainViewMediator extends Mediator<MainView>
{
	@inject
	public var demoSignal:DemoSignal;
	
	@inject
	public var demoModel:DemoModel;
	
	public function new()
	{
		super();
	}

	override function onRegister()
	{
		super.onRegister();
		
		view.log("demoModel.id: " + demoModel.id);
		
		demoSignal.completed.add(onDemoSignalCompleted);
		demoSignal.dispatch();
		
	}
	
	override public function onRemove():Void
	{
		super.onRemove();
	}
	
	private function onDemoSignalCompleted():Void
	{
		view.log("demoSignal completed");
	}
}