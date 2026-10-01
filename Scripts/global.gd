extends Node

var spawn_position : String = ""

var has_met_friend = false
var left_dome_offering = false
var bell_before_offering = false
var dome_offering_complete = false
var has_been_in_dome = false
var has_been_in_pyramid = false
var has_gone_back_to_car = false
var has_knife = false
var read_book = false
var burnt_offering = false

func _ready() -> void:
	DialogueManager.dialogue_started.connect(_on_dialogue_started)
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)

func _on_dialogue_started(_resource) -> void:
	get_tree().paused = true

func _on_dialogue_ended(_resource) -> void:
	get_tree().paused = false
