package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
/**
 * ...
 * @author Lily Peng
 */

class Player extends FlxSprite
{
	private var _parent:PlayState;
	public function new(X:Int, Y:Int, Parent:PlayState)
	{
		super(X, Y);
		loadGraphic("assets/images/gardengnome.png");
		_parent = Parent;
		trace("loaded Player");
	}
	
	override public function update():Void
	{
		velocity.x = 0;				//Default velocity to zero
		if(FlxG.keys.anyPressed(["LEFT", "A"]))
			velocity.x -= 150;		//If the player is pressing left, set velocity to left 150
		if(FlxG.keys.anyPressed(["RIGHT", "D"]))	
			velocity.x += 150;		//If the player is pressing right, then right 150
		
		super.update();
		
		if (x > FlxG.width - width - 4)
			x = FlxG.width - width - 4; //Checking and setting the right side boundary
		if (x < 4)
			x = 4;					//Checking and setting the left side boundary
		
	}
	
	override public function destroy():Void
    {
        super.destroy();
    }
}