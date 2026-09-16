extends CharacterBody2D

@onready var talk_friend: DialogueActionable2D = $TalkFriend


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var in_talk_area = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact") and in_talk_area:
		talk_friend.action()

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta



	move_and_slide()


func _on_talk_friend_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		in_talk_area = true
