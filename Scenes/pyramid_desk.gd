extends StaticBody2D

@onready var pyramid_desk_interact: DialogueActionable2D = $PyramidDeskInteract

var pyramid_desk_in_range = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact") and pyramid_desk_in_range == true:
		pyramid_desk_interact.action()


func _on_pyramid_desk_interact_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		print("entered")
		pyramid_desk_in_range = true
		

func _on_pyramid_desk_interact_body_exited(body: Node2D) -> void:
	if body.is_in_group("Player"):
		pyramid_desk_in_range = false
