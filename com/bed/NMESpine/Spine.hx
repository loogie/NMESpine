package com.bed.nmespine;
import haxe.Json;
import com.bed.nmespine.enums.SkinType;

/**
 * ...
 * @author loogie
 */
 
class Spine
{
	public static function loadSkeleton(file:String):Skeleton
	{
		var result:Skeleton = new Skeleton();
		
		var skelFile:Dynamic = Json.parse(file);
		
		var b:Array<Dynamic> = skelFile.bones;
		for (bone in b)
		{
			result.bones.push(new Bone(bone.name, bone.parent, Std.parseFloat(bone.length), Std.parseFloat(bone.x), Std.parseFloat(bone.y), Std.parseFloat(bone.scaleX), Std.parseFloat(bone.scaleY), Std.parseFloat(bone.rotation)));
		}
		
		var s:Array<Dynamic> = skelFile.slots;
		for (slot in s)
		{
			result.slots.push(new Slot(slot.name, slot.bone, new Color(slot.color), slot.attachment));
		}
		
		
		for (f in Reflect.fields(skelFile.skins))
		{
			var field:Dynamic = Reflect.field(skelFile.skins, f);
			
			for (sl in Reflect.fields(field))
			{
				var skinObj:Dynamic = Reflect.field(field, sl);
				
				var skin:Skin = new Skin(sl);
				
				for (reg in Reflect.fields(skinObj))
				{
					var regObj:Dynamic = Reflect.field(skinObj, reg);
					
					if (regObj.type == null || regObj.type == "region")
						skin.add(reg, new Region(reg, SkinType.REGION, regObj.x, regObj.y, regObj.scaleX, regObj.scaleY, regObj.rotation, regObj.width, regObj.height));
					else if (regObj.type == "regionsequence")
						skin.add(reg, new RegionSequence(reg, SkinType.REGIONSEQUENCE, regObj.x, regObj.y, regObj.scaleX, regObj.scaleY, regObj.rotation, regObj.width, regObj.height, regObj.fps, regObj.mode));
				}
				result.skins.set(f, skin);
			}
		}
		
		trace(Std.string(result));
		
		return result;
	}
}