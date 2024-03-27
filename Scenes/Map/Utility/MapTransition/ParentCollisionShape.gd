extends CollisionShape2D

var map_name = "" 
export var label_text : String

func _ready():
	map_name = self.editor_description.right(9) #map_name=xxx
	pass 

func _on_MapCollisionArea_body_entered(body):
	if body.name == "KinematicBody2D":
		var _disc = get_tree().change_scene(map_name)
	pass # Replace with function body.
