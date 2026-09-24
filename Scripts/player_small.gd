extends CharacterBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


const SPEED = 150.0
var last_direction = "up"
var is_moving = false
func _physics_process(delta: float) -> void:

	var direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction:
		velocity = direction * SPEED
	else:
		velocity = velocity.move_toward(Vector2.ZERO, SPEED)

	
		
	if direction.x > 0:
		animated_sprite_2d.flip_h = false
		animated_sprite_2d.play("walking")
		last_direction = "right"
		is_moving = true
	elif direction.y < 0:
		animated_sprite_2d.play("walk_up")
		last_direction = "up"
		is_moving = true
	elif direction.y > 0:
		animated_sprite_2d.play("walk_down")
		last_direction = "down"
		is_moving = true
	elif direction.x < 0:
		animated_sprite_2d.flip_h = true
		animated_sprite_2d.play("walking")
		last_direction = "left"
		is_moving = true
	else:
		animated_sprite_2d.play("idle")	
		is_moving = false
	
	if last_direction == "up" and is_moving == false:
		animated_sprite_2d.play("idle_up")
	elif last_direction == "down" and is_moving == false:
		animated_sprite_2d.play("idle_down")
		
		
			

	move_and_slide()
