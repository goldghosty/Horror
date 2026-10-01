extends Node2D
@onready var pyramid_art_interact: DialogueActionable2D = $PyramidArtInteract

var pyramid_mural_in_range = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Fader.fade_out()
	Global.has_been_in_pyramid = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact") and pyramid_mural_in_range == true:
		pyramid_art_interact.action()
		

func _on_pyramid_art_interact_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		print("entered")
		pyramid_mural_in_range = true

func _on_pyramid_art_interact_body_exited(body: Node2D) -> void:
	if body.is_in_group("Player"):
		print("entered")
		pyramid_mural_in_range = false
