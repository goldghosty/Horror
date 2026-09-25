extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	



func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player") and Global.has_gone_back_to_car == false:
		await Fader.fade_in()
		get_tree().change_scene_to_file("res://Scenes/outdoor_scene.tscn")
	if body.is_in_group("Player") and Global.has_gone_back_to_car == true:
		await Fader.fade_in()
		Global.spawn_position = "FromDome"
		get_tree().change_scene_to_file("res://Scenes/outdoor_scene_two.tscn")
