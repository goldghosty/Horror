extends Node2D
@onready var player_small: CharacterBody2D = $PlayerSmall
@onready var spawn_from_pyramid: Marker2D = $SpawnFromPyramid

var resource = load("res://test.dialogue")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Fader.fade_out()
	#DialogueManager.show_dialogue_balloon(resource, "start")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
