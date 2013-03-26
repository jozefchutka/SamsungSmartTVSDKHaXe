/*
Copyright (c) 2012 Massive Interactive

Permission is hereby granted, free of charge, to any person obtaining a copy of 
this software and associated documentation files (the "Software"), to deal in 
the Software without restriction, including without limitation the rights to 
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies 
of the Software, and to permit persons to whom the Software is furnished to do 
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all 
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE 
SOFTWARE.
*/

package mmvc.impl;

import minject.Injector;

/**
Abstract MVCS <code>IActor</code> implementation.

<p>As part of the MVCS implementation the <code>Actor</code> provides core 
functionality to an applications various working parts.</p>
 
<p>Some possible uses for the <code>Actor</code> include, but are no means 
limited to:</p>
 
<ul>
	<li>Service classes</li>
	<li>Model classes</li>
	<li>Controller classes</li>
	<li>Presentation model classes</li>
</ul>
 
<p>Essentially any class where it might be advantagous to have basic dependency 
injection supplied is a candidate for extending <code>Actor</code>.</p>
*/
class Actor
{
	@inject public var injector:Injector;

	public function new():Void {}
}
