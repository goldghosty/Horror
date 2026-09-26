extends StaticBody2D

@onready var gate_interact: DialogueActionable2D = $GateInteract

var gate_in_range = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact") and gate_in_range == true:
		gate_interact.action()
		
func _on_gate_interact_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		gate_in_range = true
		
func _on_gate_interact_body_exited(body: Node2D) -> void:
	if body.is_in_group("Player"):
		gate_in_range = false
