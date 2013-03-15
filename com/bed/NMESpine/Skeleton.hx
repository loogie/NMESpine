package com.bed.nmespine;

/**
 * ...
 * @author loogie
 */
class Skeleton
{
	public var bones:Array<Bone>;
	public var slots:Array<Slot>;
	public var skins:Map < String, Skin > ;
	
	public function new() 
	{
		bones = new Array<Bone>();
		slots = new Array<Slot>();
		skins = new Map < String, Skin > ();
	}
}