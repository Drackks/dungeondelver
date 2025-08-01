# Scripts/GameManager.gd

extends Node

var player
var enemies = []
var current_turn = 0

func start_combat(_player, _enemies):
	player = _player
	enemies = _enemies
	current_turn = 0
	take_turn()

func take_turn():
	if current_turn == 0:
		player.take_turn()
	else:
		enemies[current_turn - 1].take_turn()
	
	current_turn += 1
	if current_turn > enemies.size():
		current_turn = 0
