package com.bed.nmespine;

/**
 * ...
 * @author loogie
 */
class Color
{
	public var str:String;
	
	public var r:Int;
	public var g:Int;
	public var b:Int;
	
	public var color:Int;
	public var a:Float;
	
	public function new(color:String)
	{
		if (color == null)
			color = "FFFFFFFF";
		
		this.str = color;
		
		var r:String = "0x" + color.substr(0, 2);
		var g:String = "0x" + color.substr(2, 2);
		var b:String = "0x" + color.substr(4, 2);
		
		this.r = Std.parseInt(r);
		this.g = Std.parseInt(g);
		this.b = Std.parseInt(b);
		
		var c:String = "0x" + color.substr(0, 6);
		
		this.color = Std.parseInt(c);
		
		var a:String = "0x" + color.substr(6, 2);
		
		this.a = Std.parseInt(a) / 255;
	}
	
	public function toString():String
	{
		return "{ string: " + str + " r: " + Std.string(r) + " g: " + Std.string(g) + " b: " + Std.string(b) + " color: " + StringTools.hex(color) + " a: " + Std.string(a) + "}";
	}
}