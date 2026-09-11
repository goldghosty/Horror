extends CharacterBody2D

@onready var talk_friend: DialogueActionable2D = $TalkFriend


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		talk_friend.action()

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta



	move_and_slide()
