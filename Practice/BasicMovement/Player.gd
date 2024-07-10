extends Node2D

const SPEED = 200
var velocity = Vector2.ZERO

func _process(delta):
	handle_movement(delta)

func handle_movement(_delta):
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * SPEED

func _on_area_2d_body_entered(body):
	if body.is_in_group("walls"):
		position -= velocity * get_physics_process_delta_time()
