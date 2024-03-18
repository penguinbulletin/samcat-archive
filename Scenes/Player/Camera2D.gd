extends Camera2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var node = get_node("../../../Background")
	var backgroundSize = node.get_rect().size
	
	print(node.get_rect().size.x)
	print(node.get_rect().size.y)
#	self.limit_right = backgroundSize.x
#	self.limit_top = backgroundSize.y
#	self.limit_left = backgroundSize.x
#	self.limit_down = backgroundSize.y
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	print(self.position)
	pass
