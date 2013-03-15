package com.bed.nmespine;
import nme.geom.Point;

/**
 * ...
 * @author loogie
 */
class Bone
{
	public var name:String;
	public var length:Float;
	public var x:Float;
	public var y:Float;
	public var scaleX:Float;
	public var scaleY:Float;
	public var rotation:Float;
	
	public var parent:String;
	
	public function new(name:String, ?parent:String, length:Float = 0.0, x:Float = 0.0, y:Float = 0.0, scaleX:Float = 1.0, scaleY:Float = 1.0, rotation:Float = 0.0)
	{
		this.name = name;
		this.parent = parent;
		
		if (Math.isNaN(length))
			this.length = 0;
		else
			this.length = length;
		
		if (Math.isNaN(x))
			this.x = 0.0;
		else
			this.x = x;
			
		if (Math.isNaN(y))
			this.y = 0.0;
		else
			this.y = y;
			
		if (Math.isNaN(scaleX))
			this.scaleX = 1.0;
		else
			this.scaleX = scaleX;
			
		if (Math.isNaN(scaleY))
			this.scaleY = 1.0;
		else
			this.scaleY = scaleY;
			
		if (Math.isNaN(rotation))
			this.rotation = 0.0;
		else
			this.rotation = rotation;
	}
}