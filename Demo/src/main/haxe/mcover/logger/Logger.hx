/****
* Copyright 2013 Massive Interactive. All rights reserved.
* 
* Redistribution and use in source and binary forms, with or without modification, are
* permitted provided that the following conditions are met:
* 
*    1. Redistributions of source code must retain the above copyright notice, this list of
*       conditions and the following disclaimer.
* 
*    2. Redistributions in binary form must reproduce the above copyright notice, this list
*       of conditions and the following disclaimer in the documentation and/or other materials
*       provided with the distribution.
* 
* THIS SOFTWARE IS PROVIDED BY MASSIVE INTERACTIVE ``AS IS'' AND ANY EXPRESS OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
* FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL MASSIVE INTERACTIVE OR
* CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
* CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
* ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
* NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
* ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
* 
* The views and conclusions contained in the software and documentation are those of the
* authors and should not be interpreted as representing official policies, either expressed
* or implied, of Massive Interactive.
****/

package mcover.logger;

import haxe.PosInfos;
import mcover.logger.client.LoggerClient;
import mcover.logger.data.Log;
import mcover.logger.data.LogRecording;

/**
* Logger esponsible for capturing and reporting entry/exit times for functions.
* By default all function entry and exits are logged, however a subset can be explicitly 'recorded'
* 
* Basic usage:
* 
* 		var output:String = MLog.getLogger().report();
*
* To capture a specific subset:
*
*		logger.startRecording()  
*		doSomething();
*		logger.stopRecording();
*		var recording = logger.getCurrentRecording();
*		
*		var output:String = logger.report(recording);
*/

interface Logger
{
	/**
	Handler which if present, should be called when the client has completed its processing of the results.
	 */
	var completionHandler(default, default):Logger -> Void;

	/**
	flag to indicate if a recording is active
	*/
	var isRecording(default, null):Bool;

	/**
	Creates an empty recording from the current state of the logger
	Resets any existing recording
	*/
	function startRecording():Void;

	/**
	Stops recording and generates a LogRecording with the current stop time
	*/
	function stopRecording():Void;


	/**
	Returns the current recording (or null)
	
	@return the current logRecording
	*/
	function getRecording():LogRecording;


	/**
	Returns the current recording (or null)
	
	@param recording 		an optional recording (generates one from current data if none specified)
	*/
	function report(?recording:LogRecording=null):Void;


	/**
	Adds a client to report on logs
	
	@param client 	the log client to add
	*/
	function addClient(client:LoggerClient):Void;

	/**
	Removes a client from reporting on logs
	
	@param client 	the log client to remove
	*/
	function removeClient(client:LoggerClient):Void;


	/**
	Logs a function entry point
	Calls to this method is generated by macros. Developers should not call directly.
	
	@param isInlineFunction 	boolean flag indicating if method being logged is not a class method
	@param pos 		auto generated posInfos for reporting
	*/
	function logEntry(?isInlineFunction:Bool=false, ?pos:PosInfos):Int;
	
	/**
	Logs a function exit point
	Calls to this method is generated by macros. Developers should not call directly.
	
	@param entryId 	reference to the entry log for the current method
	@param pos 		auto generated posInfos for reporting
	*/
	function logExit(entryId:Int, ?pos:PosInfos):Void;
}




