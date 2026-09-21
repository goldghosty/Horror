extends Node2D
@onready var player: CharacterBody2D = $Player
@onready var collision_shape_2d: CollisionShape2D = $RightWall/CollisionShape2D


func _ready() -> void:
	Fader.fade_out()
	player.animated_sprite_2d.flip_h = true


func _process(delta: float) -> void:
	free_wall()
		

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player") and Global.has_met_friend == true:
		await Fader.fade_in()
		get_tree().change_scene_to_file("res://Scenes/outdoor_scene.tscn")

func free_wall() -> void:
	if Global.has_met_friend == true:
		collision_shape_2d.set_deferred("disabled", true)
