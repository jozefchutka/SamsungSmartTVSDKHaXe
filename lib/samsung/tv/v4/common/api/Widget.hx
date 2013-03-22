/**
 * According to
 * http://www.samsungdforum.com/Guide/ref00006/common_module_widget_object.html
 */

package samsung.tv.v4.common.api;

import js.html.KeyboardEvent;
import js.html.Element;

@:native("Common.API.Widget")
extern class Widget
{
	public function new():Void;
	public function sendReadyEvent():Void;
	public function sendExitEvent():Void;
	public function sendReturnEvent():Void;
	public function blockNavigation(event:KeyboardEvent):Void;
	public function putInnerHTML(div:Element, contents:String):Void;
	public function getChannelWidgetListPath():String;
	public function getSearchWidgetListPath():String;
	public function runSearchWidget(appID:String, extraInfo:String):Void;
	public function checkSapTicket():Void;
	public function requestSapTicket():Void;
}