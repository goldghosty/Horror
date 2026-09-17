extends CharacterBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var label: Label = $Label


const SPEED = 150.0
var current_actionable : Area2D = null

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	if is_on_floor() and velocity.x != 0.0:
		animated_sprite_2d.play("walking")
	elif is_on_floor() and velocity.x == 0.0:
		animated_sprite_2d.play("idle")
		
	if direction > 0:
		animated_sprite_2d.flip_h = false
	elif direction < 0:
		animated_sprite_2d.flip_h = true
		

	move_and_slide()
	

func _on_interaction_area_area_entered(area: Area2D) -> void:
	if area.has_method("action"):
		current_actionable = area
		print(current_actionable)
		label.visible = true
		


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		label.visible = false	


func _on_interaction_area_area_exited(area: Area2D) -> void:
	if area.has_method("action"):
		current_actionable = area
		label.visible = false
