/// @description 
right = ord("D");
up = ord("W");
left = ord("A");
down = ord("S");

color = make_color_rgb(random(255),random(255),random(255));

radius = (tileWidth/12);//=16

subimg = 0;
alarm[0] = 60; //bob up and down

playerScale = 3;
headScale = 5;
armorScale = 2;

totalArmor = 0;
fill = 0;
fall = false;
QuickTime = false;



helmetSpr = ITEMINFO[Gear.helmet, iteminfo.sprite];
chestSpr =	ITEMINFO[Gear.chest , iteminfo.sprite];
glovesSpr =	ITEMINFO[Gear.gloves , iteminfo.sprite];
pantsSpr = 	ITEMINFO[Gear.pants , iteminfo.sprite];
bootsSpr = 	ITEMINFO[Gear.boots , iteminfo.sprite];

helmetTier = teir.none;
chestTier = teir.none;
glovesTier = teir.none;
pantsTier = teir.none;
bootsTier = teir.none;

totalArmor = GetArmor();
