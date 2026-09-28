extends Area2D

var resource = load("res://back_to_car_early.dialogue")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player") and Global.dome_offering_complete == true:
		await Fader.fade_in()
		get_tree().change_scene_to_file("res://Scenes/back_to_car_scene.tscn")
	elif body.is_in_group("Player") and Global.dome_offering_complete == false:
		DialogueManager.show_dialogue_balloon(resource, "start")
		
