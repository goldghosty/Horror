extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Fader.fade_out()
	Global.has_been_in_dome = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
