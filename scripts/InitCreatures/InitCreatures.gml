globalvar ENEMYINFO; ENEMYINFO = 0;

enum enemyTier {
	easy,
	medium,
	hard
}

enum enemyinfo {
	name,
	tier,
	object,
	sprite,
}

enum creature {
	spider,
	blob,
	bug,
	pig,
	fly,
	rat,
	spiderQueen,
	worm,
	nit,
	gas,
	robt,
	droid,
	flame,
	last
}
var t = enemyTier.easy;
setupCreatures(creature.spider,	"Spider",	t, objEnemy, sprBadies);
setupCreatures(creature.blob,	"Blob"	,	t, objEnemy, sprite21);
setupCreatures(creature.bug,	"Bug"	,	t, objEnemy, sprite22);
setupCreatures(creature.pig,	"Dog"	,	t, objEnemy, sprite23);
setupCreatures(creature.fly,	"Fly"	,	t, objEnemy, sprite24);
setupCreatures(creature.rat,	"Rat"	,	t, objEnemy, sprite25);


var t = enemyTier.medium;
setupCreatures(creature.spiderQueen, "SpiderQueen",		t, objEnemy, sprSpider2);
setupCreatures(creature.worm, "Larve",					t, objEnemy, sprite26);
setupCreatures(creature.nit,	"Nit",					t, objEnemy, sprite27);
setupCreatures(creature.gas,	"Gass",					t, objEnemy, sprite28);
setupCreatures(creature.robt,	"Robot"	,				t, objEnemy, sprite29);
setupCreatures(creature.droid,	"droid"	,				t, objEnemy, sprite31);

var t = enemyTier.hard;
setupCreatures(creature.flame,	"Flame",			t, objEnemy, sprite30);

