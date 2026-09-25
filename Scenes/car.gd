extends Area2D

var car_in_range = false
@onready var car_interact: DialogueActionable2D = $CarInteract


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact") and car_in_range == true:
		car_interact.action()
			

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		car_in_range = true

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("Player"):
		car_in_range = false
