package  
{
	/**
	 * Blah
	 * @author Lily Peng
	 */
	import org.flixel.*;
	import flash.display.Sprite;
	import flash.events.Event;
    import flash.events.KeyboardEvent;
    import flash.ui.Keyboard;
	[SWF(width="640", height="480", backgroundColor="#000000")] //Set the size and color of the Flash file 
	
	public class Main extends FlxGame
	{

		public var movingUp;
		public var movingDown;
		public var movingLeft;
		public var movingRight;
		public var speed;
		
		public function Main() 
		{
			movingUp = false;
			movingDown = false;
			movingLeft = false;
			movingRight = false;
			speed = 5;
			trace("start");
			//addEventListener(Event.ENTER_FRAME, update);
			//stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
			//stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
			//addChild(player)
			
			//player.x = 500;
			//player.y = 300;
			
			super(320,240,PlayState,2); //Create a new FlxGame object at 320x240 with 2x pixels, then load PlayState 
		}
		
		/*private function update(e:Event):void {
			if (movingLeft) {
				if (enemy.x - speed >= 0) {
					enemy.x -= speed;
				}                
				else {
					enemy.x = 0;
				}
			}
			else if (movingRight) {
				if (enemy.x + speed + enemy.width <= stage.stageWidth) {
					trace(stage.stageWidth);
					enemy.x += speed;
				}
				else {
					enemy.x = stage.stageWidth - enemy.width;
				}
			}
		}
		
		function onKeyDown(e:KeyboardEvent):void
		{
			if (e.keyCode == 37 || e.keyCode == 65) {
				if (!movingLeft) {
					movingLeft = true;
				}
			}
			else if (e.keyCode == 39 || e.keyCode == 68) {
				if (!movingRight) {
					movingRight = true;
				}
			}  
		}
		 
		function onKeyUp(e:KeyboardEvent):void
		{
			if (e.keyCode == 37 || e.keyCode == 65) {
				if (movingLeft) {
					movingLeft = false;
				}
			 }
			 else if (e.keyCode == 39 || e.keyCode == 68) {
				if (movingRight) {
					movingRight = false;
				}
			}
		}*/
		
	}

}