/// @description Instantly kill Blob

if (life == 1)
	game_restart();
else {
	life -= 1;
	x = obj_spawner.blobX;
	y = obj_spawner.blobY;
}
hp = MAXHP;