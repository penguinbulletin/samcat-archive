extends KinematicBody2D

export var speed := 500
var _sprites := {Vector2.RIGHT: 7, Vector2.LEFT: 4, Vector2.UP: 10, Vector2.DOWN: 1}
var _velocity := Vector2.ZERO
onready var animated_sprite: AnimatedSprite = $AnimatedSprite

func _physics_process(_delta: float) -> void:
	var direction := Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	
	if direction.length() > 1.0:
		direction = direction.normalized()
	move_and_slide(speed * direction)
	
func _unhandled_input(event):
	if event.is_action_pressed("right"):
		_update_sprite(Vector2.RIGHT)
	elif event.is_action_pressed("left"):
		_update_sprite(Vector2.LEFT)
	elif event.is_action_pressed("down"):
		_update_sprite(Vector2.DOWN)
	elif event.is_action_pressed("up"):
		_update_sprite(Vector2.UP)

func _update_sprite(direction: Vector2) -> void:
	animated_sprite.frame = _sprites[direction]
