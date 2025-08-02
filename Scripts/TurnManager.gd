extends Node

# TurnManager for modular turn-based combat
var turn_order := []
var current_turn := 0

func add_combatant(combatant):
	turn_order.append(combatant)

func start_turns():
	current_turn = 0
	if turn_order.size() > 0:
		turn_order[current_turn].start_turn()

func end_turn():
	current_turn = (current_turn + 1) % turn_order.size()
	turn_order[current_turn].start_turn()
