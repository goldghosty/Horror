extends Area2D
@onready var wall_art_interact: DialogueActionable2D = $WallArtInteract

var art_in_range = false


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact") and art_in_range == true:
		wall_art_interact.action()


func _on_wall_art_interact_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		art_in_range = true
		

func _on_wall_art_interact_body_exited(body: Node2D) -> void:
	if body.is_in_group("Player"):
		art_in_range = false
