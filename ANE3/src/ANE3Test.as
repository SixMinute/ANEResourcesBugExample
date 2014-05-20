package
{
	import com.sixminute.ane.ANE1;
	import com.sixminute.ane.ANE2;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public class ANE3Test extends Sprite
	{
		public function ANE3Test()
		{
			super();
			
			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			var tf:TextField;
			
			tf = new TextField();
			tf.defaultTextFormat = new TextFormat('Verdana', 24);
			tf.selectable = false;
			tf.text = 'Login';
			tf.x = tf.y = 8;
			tf.background = true;
			tf.backgroundColor = 0xF7819F;
			addChild(tf);
			
			tf.addEventListener(MouseEvent.CLICK, onLogin);
			
			tf = new TextField();
			tf.defaultTextFormat = new TextFormat('Verdana', 24);
			tf.selectable = false;
			tf.text = 'Initialise';
			tf.x = 8;
			tf.background = true;
			tf.backgroundColor = 0xF7819F;
			addChild(tf);
			tf.y = tf.height * 2 + 16;
			
			tf.addEventListener(MouseEvent.CLICK, onInitialise);
		}
		
		protected function onLogin(event:MouseEvent):void
		{
			ANE1.getInstance().login();
		}
		
		protected function onInitialise(event:MouseEvent):void
		{
			ANE2.getInstance().initialise();
		}
	}
}