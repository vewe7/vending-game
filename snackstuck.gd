extends RigidBody2D

@export var stuckness = 100 # When this reaches 0, the snack should fall
# Called when the node enters the scene tree for the first time.
func _ready():
	print("meow ready")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	print("meow")

func _on_area_2d_body_entered(body):
	print(body)
