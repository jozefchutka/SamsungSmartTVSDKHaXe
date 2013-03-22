/**
 * According to
 * http://www.samsungdforum.com/Guide/ref00006/common_module_tvkeyvalue_object.html
 */

package samsung.tv.v4.common.api;

@:native("Common.API.TVKeyValue")
extern class TVKeyValue
{
	public function new():Void;
	public var KEY_TOOLS(default,null):Int;
	public var KEY_MUTE(default,null):Int;
	public var KEY_RETURN(default,null):Int;
	public var KEY_UP(default,null):Int;
	public var KEY_DOWN(default,null):Int;
	public var KEY_LEFT(default,null):Int;
	public var KEY_RIGHT(default,null):Int;
	public var KEY_WHEELDOWN(default,null):Int;
	public var KEY_WHEELUP(default,null):Int;
	public var KEY_ENTER(default,null):Int;
	public var KEY_INFO(default,null):Int;
	public var KEY_EXIT(default,null):Int;
	public var KEY_RED(default,null):Int;
	public var KEY_GREEN(default,null):Int;
	public var KEY_YELLOW(default,null):Int;
	public var KEY_BLUE(default,null):Int;
	public var KEY_INFOLINK(default,null):Int;
	public var KEY_RW(default,null):Int;
	public var KEY_PAUSE(default,null):Int;
	public var KEY_FF(default,null):Int;
	public var KEY_PLAY(default,null):Int;
	public var KEY_STOP(default,null):Int;
	public var KEY_1(default,null):Int;
	public var KEY_2(default,null):Int;
	public var KEY_3(default,null):Int;
	public var KEY_4(default,null):Int;
	public var KEY_5(default,null):Int;
	public var KEY_6(default,null):Int;
	public var KEY_7(default,null):Int;
	public var KEY_8(default,null):Int;
	public var KEY_9(default,null):Int;
	public var KEY_0(default,null):Int;
	public var KEY_EMPTY(default,null):Int;
	public var KEY_PRECH(default,null):Int;
	public var KEY_SOURCE(default,null):Int;
	public var KEY_CHLIST(default,null):Int;
	public var KEY_MENU(default,null):Int;
	public var KEY_WLINK(default,null):Int;
	public var KEY_CC(default,null):Int;
	public var KEY_CONTENT(default,null):Int;
	public var KEY_FAVCH(default,null):Int;
	public var KEY_REC(default,null):Int;
	public var KEY_EMODE(default,null):Int;
	public var KEY_DMA(default,null):Int;
	public var KEY_PANEL_CH_UP(default,null):Int;
	public var KEY_PANEL_CH_DOWN(default,null):Int;
	public var KEY_PANEL_VOL_UP(default,null):Int;
	public var KEY_PANEL_VOL_DOWN(default,null):Int;
	public var KEY_PANEL_ENTER(default,null):Int;
	public var KEY_PANEL_SOURCE(default,null):Int;
	public var KEY_PANEL_MENU(default,null):Int;
	public var KEY_PANEL_POWER(default,null):Int;
}