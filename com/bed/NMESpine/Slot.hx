package com.bed.nmespine;

/**
 * ...
 * @author loogie
 */
class Slot
{
	public var name:String;
	public var bone:String;
	public var color:Color;
	public var attachment:String;
	
	public function new(name:String, bone:String, ?color:Color, ?attachment:String)
	{
		this.name = name;
		this.bone = bone;
		
		if (color == null)
			this.color = new Color("FFFFFFFF");
		else
			this.color = color;
		
		this.attachment = attachment;
	}
}