package com.sixminute.ane
{
	import flash.events.EventDispatcher;
	import flash.external.ExtensionContext;

	public class ANE2 extends EventDispatcher
	{
		private static var _instance:ANE2;
		
		private var extCtx:ExtensionContext = null;
		
		private static const INITIALISE:String = 'initialise';
		
		public function ANE2()
		{
			if (!_instance)
			{
				extCtx = ExtensionContext.createExtensionContext('com.sixminute.ane.ANE2', null);

				if(null == extCtx)
				{
					trace(this, 'Error - Extension Context is null.');
				}
				_instance = this;
			}
			else
			{
				throw Error('This is a singleton, use getInstance(), do not call the constructor directly.');
			}
		}
		
		public static function getInstance() : ANE2
		{
			return _instance ? _instance : new ANE2();
		}
		
		public function initialise():void
		{
			extCtx.call(INITIALISE);
		}
	}
}
