package
{
	import com.sixminute.ane.ANE2;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public class ANE2Test extends Sprite
	{
		public function ANE2Test()
		{
			super();
			
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			var tf:TextField = new TextField();
			tf.defaultTextFormat = new TextFormat('Verdana', 24);
			tf.selectable = false;
			tf.text = 'Initialise';
			tf.x = tf.y = 8;
			tf.background = true;
			tf.backgroundColor = 0xF7819F;
			addChild(tf);
			
			tf.addEventListener(MouseEvent.CLICK, onClick);
		}
		
		protected function onClick(event:MouseEvent):void
		{
			ANE2.getInstance().initialise();
		}
	}
}