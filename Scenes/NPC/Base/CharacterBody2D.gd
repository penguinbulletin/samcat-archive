extends CharacterBody2D
@onready var _animated_sprite = $AnimatedSprite2D

func _physics_process(delta):
	_animated_sprite.play("default")
	move_and_slide()
