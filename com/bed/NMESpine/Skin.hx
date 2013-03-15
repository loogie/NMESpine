package com.bed.nmespine;

/**
 * ...
 * @author Basic Element Design
 */
class Skin
{
	public var name:String;
	public var slots:Map<String, Region>;
	
	public function new(name:String) 
	{
		this.name = name;
		
		slots = new Map<String, Region>();
	}
	
	public function add(name:String, region:Region):Void
	{
		trace("skin: " + name);
		slots.set(name, region);
	}
}