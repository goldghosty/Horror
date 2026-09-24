extends Node2D
@onready var player: CharacterBody2D = $Player


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Fader.fade_out()
	player.animated_sprite_2d.flip_h = true
	Global.has_gone_back_to_car = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		await Fader.fade_in()
		get_tree().change_scene_to_file("res://Scenes/outdoor_scene_two.tscn")
