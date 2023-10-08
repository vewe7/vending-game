extends Node2D
@export var collision_shape_filename: String
@export var sprite_filename: String
var snack_scene = preload("res://snack.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _spawn_item():
	var new_snack = snack_scene.instantiate()
	new_snack.get_child(0).texture = load("res://sprites/" + sprite_filename)
	new_snack.get_child(1).shape = load("res://collision_shapes/" + collision_shape_filename)
	new_snack.stuck_snack_scene = get_parent().get_node("SnackStuck")
	#new_snack.position = self.position;
	self.add_child(new_snack)
	
