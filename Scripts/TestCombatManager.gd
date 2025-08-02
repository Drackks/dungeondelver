extends Node2D

@onready var turn_manager = get_node("TurnManager")
@onready var player = get_node("Player")
@onready var enemy = get_node("Enemy")

func _ready():
	if turn_manager == null:
		push_error("TurnManager node not found!")
	if player == null:
		push_error("Player node not found!")
	if enemy == null:
		push_error("Enemy node not found!")
	if turn_manager and player and enemy:
		turn_manager.add_combatant(player)
		turn_manager.add_combatant(enemy)
		turn_manager.start_turns()
