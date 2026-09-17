extends Area2D
@onready var read_sign: DialogueActionable2D = $ReadSign

var in_range = false



func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact") and in_range == true:
		read_sign.action()
		

func _on_read_sign_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		in_range = true
		

func _on_read_sign_body_exited(body: Node2D) -> void:
	if body.is_in_group("Player"):
		in_range = false
