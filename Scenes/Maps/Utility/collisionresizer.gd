extends CollisionShape2D

# Called when the node enters the scene tree for the first time.
func _ready():
	self.shape = self.get_parent().get_parent().shape
	pass # Replace with function body.
