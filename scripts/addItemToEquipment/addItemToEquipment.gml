// @function addItemToEquipment(charac, item, slot)
// @description adds an item to a character's equipment slot
// @param {real} equipment ID of the equipment ds_grid to add the item to
// @param {real} item item to add (use object ex genericThing)
// @param {real} slot where to add the item to.

var equipment = argument0;
var item = argument1;
var slot = argument2;

var createdObject = instance_create_layer(0, 0, "MiddleObjects", item);
var createdObjectSpecial = ds_grid_width(createdObject.special);

ds_grid_set(equipment, slot, 1, object_get_name(item));
ds_grid_set(equipment, slot, 2, createdObject.weight);
ds_grid_set(equipment, slot, 3, createdObject.value);
ds_grid_set(equipment, slot, 4, createdObjectSpecial);

instance_destroy(createdObject);