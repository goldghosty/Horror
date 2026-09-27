extends Area2D
@onready var firepit_interact: DialogueActionable2D = $FirepitInteract


var firepit_in_range = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact") and firepit_in_range == true:
		firepit_interact.action()
		

func _on_firepit_interact_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		firepit_in_range = true


func _on_firepit_interact_body_exited(body: Node2D) -> void:
	if body.is_in_group("Player"):
		firepit_in_range = false
