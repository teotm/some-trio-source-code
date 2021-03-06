package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.animation.FlxBaseAnimation;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.util.FlxColor;
import lime.app.Application;

using StringTools;

//bcuz god damn it. those offset things in playstate take up a bunch of space

class CharacterOffsets
{
	public var daOffsetArray:Array<Float> = [0, 0, 0, 0, 0, 0];
	public var hasOffsets:Bool = true;

	public function new(curCharacter:String = 'dad', isPlayer:Bool = false, ?isGF:Bool = false)
	{
		//in order this is +x, +y, +camPosX, +camPosY, +camPosX from midpoint, +camPosY from midpoint.
		daOffsetArray = [0, 0, 0, 0, 0, 0];

		if (isGF)
		{
			switch(curCharacter)
			{
				// lol no
			}
			return;
		}
		if (!isPlayer)
		{
			switch (curCharacter)
			{
				default:
					daOffsetArray = [0, 0, 0, 0, 0, 0];
					hasOffsets = false;
			}
		}
		else if (isPlayer)
		{
			switch (curCharacter)
			{
				default:
					daOffsetArray = [0, 0, 0, 0, 0, 0];
					hasOffsets = false;
			}
		}
	}
}