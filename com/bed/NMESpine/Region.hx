package com.bed.nmespine;
import com.bed.nmespine.enums.SkinType;

/**
 * ...
 * @author Basic Element Design
 */
class Region
{
	public var name:String;
	public var type:SkinType;
	
	public var x:Float;
	public var y:Float;
	public var scaleX:Float;
	public var scaleY:Float;
	public var rotation:Float;
	public var width:Float;
	public var height:Float;
	
	public function new(name:String, ?type:SkinType, x:Float= 0.0, y:Float = 0.0, scaleX:Float = 1.0, scaleY:Float = 1.0, rotation:Float = 0, width:Float = 0, height:Float = 0) 
	{
		this.name = name;
		
		if (type == null)
			this.type = SkinType.REGION;
		else
			this.type = type;
		
		if (Math.isNaN(x))
			this.x = 0;
		else
			this.x = x;
			
		if (Math.isNaN(y))
			this.y = 0;
		else
			this.y = y;
			
		if (Math.isNaN(scaleX))
			this.scaleX = 0;
		else
			this.scaleX = scaleX;
			
		if (Math.isNaN(scaleY))
			this.scaleY = 0;
		else
			this.scaleY = scaleY;
			
		if (Math.isNaN(rotation))
			this.rotation = 0;
		else
			this.rotation = rotation;
			
		if (Math.isNaN(width))
			this.width = 0;
		else
			this.width = width;
			
		if (Math.isNaN(height))
			this.height = 0;
		else
			this.height = height;
		
		trace("{ name: " + name + " type: region x: " + Std.string(this.x) + " x: " + Std.string(this.y) + " scaleX: " + Std.string(this.scaleX) + " scaleY: " + Std.string(this.scaleY) + " rot: " + Std.string(this.rotation) + " width: " + Std.string(this.width) + " height: "+ Std.string(this.height) + " }");
	}
	
}