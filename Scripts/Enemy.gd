extends CharacterBody2D

var health := 10
var power_drop := "PowerupType"

func _ready():
	pass

func start_turn():
	# Basic enemy logic placeholder
	pass

func on_defeated():
	# Drop powerup logic
	print("Enemy defeated! Dropping powerup: %s" % power_drop)
