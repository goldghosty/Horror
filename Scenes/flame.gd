extends Area2D
@onready var flame: Sprite2D = $Flame
@export var flame_color : Texture2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.burnt_offering == true:
		flame.texture = flame_color
		
