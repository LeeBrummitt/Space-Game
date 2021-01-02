function createEquipment(argument0, argument1, argument2, argument3, argument4) {
	// @desc Create the equipmet ds_grid
	// @param number of heads (for helmets)
	// @param number of hands (for weapons)
	// @param number of chests (for armor)
	// @param number of brain slots (for cyborg stuff)
	// @param numver of legs (for pants)
	// assumed one back (for jetpacks)
	// assumed 1 gun
	// assumed 1 ammo

	var heads = argument0;
	var hands = argument1;
	var chests = argument2;
	var brainSlots = argument3;
	var legs = argument4;
	var backs = 1;
	var guns = 1;
	var ammos = 1;

	var totalSlots = heads + hands + chests + brainSlots + legs + backs + guns + ammos;

	// slot, name, weight, value, special
	var equipment = ds_grid_create(totalSlots, 5);

	for(var i = 0; i < totalSlots; i++){
		if(i < heads){
			ds_grid_set(equipment, i, 0, "head")
		} else if(i < heads + hands){
			ds_grid_set(equipment, i, 0, "hand")
		} else if(i < heads + hands + chests){
			ds_grid_set(equipment, i, 0, "chest")
			addItemToEquipment(equipment, genericArmor, i);
		} else if(i < heads + hands + chests + brainSlots){
			ds_grid_set(equipment, i, 0, "brainSlot")
		} else if(i < heads + hands + chests + brainSlots + legs){
			ds_grid_set(equipment, i, 0, "legs")
		} else if(i < heads + hands + chests + brainSlots + legs + backs){
			ds_grid_set(equipment, i, 0, "back")
		} else if(i < heads + hands + chests + brainSlots + legs + backs + guns){
			ds_grid_set(equipment, i, 0, "gun")
			addItemToEquipment(equipment, genericRangedWeapon, i);
		} else if(i < heads + hands + chests + brainSlots + legs + backs + guns + ammos){
			ds_grid_set(equipment, i, 0, "ammo")
			addItemToEquipment(equipment, genericAmmo, i);
		}
	}

	return equipment;


}
