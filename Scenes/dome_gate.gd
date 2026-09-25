extends StaticBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Global.has_been_in_dome == true and Global.dome_offering_complete == true:
		animated_sprite_2d.play("open")
		collision_shape_2d.set_deferred("disabled", true)
	else:
		animated_sprite_2d.play("closed")
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
