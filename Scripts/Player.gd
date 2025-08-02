extends CharacterBody2D

# Grid movement settings
var grid_size := 32
var move_queue := []
var is_moving := false

func _ready():
	set_physics_process(true)

func _unhandled_input(event):
	if is_moving:
		return
	if event.is_action_pressed("ui_up"):
		move_queue.append(Vector2(0, -1))
	elif event.is_action_pressed("ui_down"):
		move_queue.append(Vector2(0, 1))
	elif event.is_action_pressed("ui_left"):
		move_queue.append(Vector2(-1, 0))
	elif event.is_action_pressed("ui_right"):
		move_queue.append(Vector2(1, 0))

func _physics_process(_delta):
	if not is_moving and move_queue.size() > 0:
		var direction = move_queue.pop_front()
		var target_pos = position + direction * grid_size
		is_moving = true
		position = target_pos
		is_moving = false

func start_turn():
	# Placeholder for player turn logic
	print("Player's turn!")
