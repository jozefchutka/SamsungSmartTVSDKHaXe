package sk.yoz.tv.samsung.demo.mvc.commands;

import mmvc.impl.Command;
import sk.yoz.tv.samsung.demo.signals.DemoSignal;
import sk.yoz.tv.samsung.demo.mvc.models.DemoModel;

class DemoSignalCommand extends Command
{
	@inject
	public var demoModel:DemoModel;
	
	override public function execute():Void
	{
		js.Lib.alert('command ' + demoModel.id);
		
		cast(signal, DemoSignal).completed.dispatch();
	}
}