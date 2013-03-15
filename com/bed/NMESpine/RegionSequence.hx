package com.bed.nmespine;
import com.bed.nmespine.enums.SequenceMode;
import com.bed.nmespine.enums.SkinType;

/**
 * ...
 * @author Basic Element Design
 */
class RegionSequence extends Region
{
	public var fps:Int;
	public var mode:SequenceMode;
	
	public function new(name:String, ?type:SkinType, x:Float= 0.0, y:Float = 0.0, scaleX:Float = 1.0, scaleY:Float = 1.0, rotation:Float = 0, width:Float = 0, height:Float = 0, fps:Int = 12, ?mode:String = "forward") 
	{
		super(name, type, x, y, scaleX, scaleY, rotation, width, height);
		
		if (Math.isNaN(fps))
			this.fps = 12;
		else
			this.fps = fps;
		
		if (mode == null || mode == "forward")
			this.mode = SequenceMode.FORWARD;
		else if (mode == "backward")
			this.mode = SequenceMode.BACKWARD;
		else if (mode == "forwardLoop")
			this.mode = SequenceMode.BACKWARDLOOP;
		else if (mode == "backwardLoop")
			this.mode = SequenceMode.BACKWARDLOOP;
		else if (mode == "pingPong")
			this.mode = SequenceMode.PINGPONG;
		else if (mode == "random")
			this.mode = SequenceMode.RANDOM;
			
		trace("{ name: " + Std.string(this.fps) + " mode: " + Std.string(mode) + " }");
	}
	
}