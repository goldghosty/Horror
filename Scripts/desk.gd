extends StaticBody2D
@onready var desk_interact: DialogueActionable2D = $Desk_Interact

var desk_in_range = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact") and desk_in_range == true:
		desk_interact.action()
		


func _on_desk_interact_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		desk_in_range = true


func _on_desk_interact_body_exited(body: Node2D) -> void:
	if body.is_in_group("Player"):
		desk_in_range = false
