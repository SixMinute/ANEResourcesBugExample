package
{
	import com.sixminute.ane.ANE1;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public class ANE1Test extends Sprite
	{
		public function ANE1Test()
		{
			super();
			
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			var tf:TextField = new TextField();
			tf.defaultTextFormat = new TextFormat('Verdana', 24);
			tf.selectable = false;
			tf.text = 'Login';
			tf.x = tf.y = 8;
			tf.background = true;
			tf.backgroundColor = 0xF7819F;
			addChild(tf);
			
			tf.addEventListener(MouseEvent.CLICK, onClick);
		}
		
		protected function onClick(event:MouseEvent):void
		{
			ANE1.getInstance().login();
		}
	}
}