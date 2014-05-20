package com.sixminute.ane
{
	import flash.events.EventDispatcher;
	import flash.external.ExtensionContext;

	public class ANE1 extends EventDispatcher
	{
		private static var _instance:ANE1;
		
		private var extCtx:ExtensionContext = null;
		
		private static const LOGIN:String = 'login';
		
		public function ANE1()
		{
			if (!_instance)
			{
				extCtx = ExtensionContext.createExtensionContext('com.sixminute.ane.ANE1', null);

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
		
		public static function getInstance() : ANE1
		{
			return _instance ? _instance : new ANE1();
		}
		
		public function login():void
		{
			extCtx.call(LOGIN);
		}
	}
}
