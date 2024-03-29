extends CollisionShape2D

# Define custom properties to control the shape and size
@export var custom_shape: Shape2D = RectangleShape2D.new()
@export var custom_size: Vector2 = Vector2(64, 64)

# Called when the node enters the scene tree for the first time
func _ready():
	# Set the initial shape and size
	shape = custom_shape
	update_shape_size()

# Called whenever a property is changed in the editor
func _property_changed(property):
	# Update the shape and size based on the custom properties
	if property == "custom_shape" or property == "custom_size":
		shape = custom_shape
		update_shape_size()

# Update the size of the shape based on the custom size
func update_shape_size():
	if custom_shape is RectangleShape2D:
		scale = custom_size / 2
