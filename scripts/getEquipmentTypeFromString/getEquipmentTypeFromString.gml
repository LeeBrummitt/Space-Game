function getEquipmentTypeFromString(argument0) {
	var equipmentTypeString = argument0;
	var equipmentType;

	if(equipmentTypeString == "head"){
		equipmentType = genericHeadArmor;
	}else if(equipmentTypeString == "hand"){
		equipmentType = genericMeleeWeapon;
	}else if(equipmentTypeString == "chest"){
		equipmentType = genericChestArmor;
	}else if(equipmentTypeString == "brainSlot"){
		equipmentType = genericBrainSlotItem;
	}else if(equipmentTypeString == "legs"){
		equipmentType = genericLegArmor;
	}else if(equipmentTypeString == "back"){
		equipmentType = genericBackItem;
	}else if(equipmentTypeString == "gun"){
		equipmentType = genericRangedWeapon;
	}else if(equipmentTypeString == "ammo"){
		equipmentType = genericAmmo;
	}

	return equipmentType;


}
