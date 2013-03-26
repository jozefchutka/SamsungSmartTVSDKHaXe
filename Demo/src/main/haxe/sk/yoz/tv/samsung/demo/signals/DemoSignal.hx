package sk.yoz.tv.samsung.demo.signals;

import msignal.Signal;

class DemoSignal extends Signal0
{
	public var completed:Signal0;

	public function new()
	{
		super();
		
		completed = new Signal0();
	}
}