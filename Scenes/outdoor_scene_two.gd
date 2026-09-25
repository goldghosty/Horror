extends Node2D
@onready var player_small: CharacterBody2D = $PlayerSmall
@onready var spawn_from_pyramid: Marker2D = $SpawnFromPyramid
@onready var spawn_from_dome: Marker2D = $SpawnFromDome

var resource = load("res://test.dialogue")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Fader.fade_out()
	print(Global.has_been_in_dome)
	if Global.spawn_position == "FromPyramid":
		player_small.global_position = spawn_from_pyramid.global_position
		player_small.animated_sprite_2d.play("walk_down")
	if Global.spawn_position == "FromDome":
		player_small.global_position = spawn_from_dome.global_position
		player_small.animated_sprite_2d.play("walk_down")
	#DialogueManager.show_dialogue_balloon(resource, "start")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
