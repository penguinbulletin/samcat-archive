extends CollisionShape2D
@export var map_name : String

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	print(body)
	if body.name == "CharacterBody2D":
		var _disc = get_tree().change_scene_to_file(map_name)
	pass # Replace with function body.
