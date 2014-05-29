package
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Lily Peng
	 */
	//[Embed(source="../assets/leek.swf", symbol="Leek")]
	
	public class Player extends FlxSprite
	{
		//[Embed(source = "images/gardengnome.png")]
		[Embed(source="images/gardengnome.png")] public var ImgPlayer:Class;
		//protected static const PLAYER_RUN_SPEED:int = 80;
		//protected static const GRAVITY_ACCELERATION:Number = 450;
		protected static const JUMP_ACCELERATION:Number = 200;
		private var _jump:Number;
		/*drag.x = PLAYER_RUN_SPEED * 8;
		acceleration.y = GRAVITY_ACCELERATION;
		maxVelocity.x = PLAYER_RUN_SPEED;
		maxVelocity.y = JUMP_ACCELERATION;*/
		
		private var _parent:*;
		public function Player(_x:int,_y:int, parent:*):void
		{
			super(_x, _y);
			_parent = parent;
			loadGraphic(ImgPlayer, true, true, 20, 24);
			trace("loaded Player");
		}
		
		public override function update():void{
			velocity.x = 0;				//Default velocity to zero
			if(FlxG.keys.LEFT)
				velocity.x -= 150;		//If the player is pressing left, set velocity to left 150
			if(FlxG.keys.RIGHT)	
				velocity.x += 150;		//If the player is pressing right, then right 150
			
			super.update();
			
			if (x > FlxG.width - width - 4)
				x = FlxG.width - width - 4; //Checking and setting the right side boundary
			if (x < 4)
				x = 4;					//Checking and setting the left side boundary
			
		}
	}

}