extends Camera2D

@export var player : CharacterBody2D
@export var screen_size : Vector2 = Vector2(640, 360)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var target_x = floor(player.global_position.x / screen_size.x) * screen_size.x + screen_size.x /2
	var target_y = floor(player.global_position.y / screen_size.y) * screen_size.y + screen_size.y / 2
	
	global_position = Vector2(target_x, target_y)
