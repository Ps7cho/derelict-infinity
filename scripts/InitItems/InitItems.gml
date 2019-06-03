globalvar ITEMINFO; ITEMINFO = 0;


enum Gear{
	helmet,
	chest,
	gloves,
	pants,
	boots
}

enum teir{
	none,
	low,
	medium,
	high
}

enum itemcat{
	armor,
	weapon,
	tool
}

enum iteminfo {
	name,
	category,
	object,
	sprite,
	stackmax
}

var ic = itemcat.armor;
setupItem(Gear.helmet, "Helmet",ic,pickups,sprHelmet);
setupItem(Gear.chest, "Chest Plate", ic, pickups, sprChest);
setupItem(Gear.gloves, "Gauntlets", ic, pickups, sprGloves);
setupItem(Gear.pants, "Pants", ic, pickups, sprPants);
setupItem(Gear.boots, "Boots", ic, pickups, sprBoots);