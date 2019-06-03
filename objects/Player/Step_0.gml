/// @description 

timers();
movementInputs();

if keyboard_check_pressed(ord("E")){
	with collision_circle(x,y,30,pickups,false,true){
		switch gearType{
			case Gear.helmet:	other.helmetTier = armorType;	break;
			case Gear.chest:	other.chestTier  = armorType;	break;
			case Gear.gloves:	other.glovesTier = armorType;	break;
			case Gear.pants:	other.pantsTier	 = armorType;	break;
			case Gear.boots:	other.bootsTier	 = armorType; 	break;
		}
		instance_destroy();
		
		
	}
	totalArmor = GetArmor();
}

camera_set_view_pos(view_camera[position],x-720,y-540);

// Character selection


