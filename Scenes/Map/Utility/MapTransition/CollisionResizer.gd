extends CollisionShape2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func get_local_scene_root(p_node : Node) -> Node:

	while(p_node and not p_node.filename):
		p_node = p_node.get_parent()
		
	return p_node as Node
	
# Called when the node enters the scene tree for the first time.
func _ready():
	self.shape = get_local_scene_root(self).shape
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
