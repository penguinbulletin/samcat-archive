extends CharacterBody2D

@export var speed := 500
@onready var _animated_sprite = $AnimatedSprite2D

func _process(_delta):
	#animation
	if Input.is_action_pressed("right"):
		_animated_sprite.play("run_right")
	elif Input.is_action_pressed("left"):
		_animated_sprite.play("run_left")
	elif Input.is_action_pressed("up"):
		_animated_sprite.play("run_up")
	elif Input.is_action_pressed("down"):
		_animated_sprite.play("run_down")
	else:
		_animated_sprite.stop()
		
	#movement
	var direction := Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)

	if direction.length() > 1.0:
		direction = direction.normalized()
	velocity = speed * direction
	move_and_slide()
