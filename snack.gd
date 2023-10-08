extends RigidBody2D

signal hit(hit_velocity, hit_mass)

var has_hit = false
var falling_velocity

@export var stuck_snack_scene: RigidBody2D 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (!has_hit):
		falling_velocity = self.linear_velocity

func _on_body_entered(body):
	if (!has_hit && body is RigidBody2D):
		has_hit = true
		stuck_snack_scene.take_hit(falling_velocity, self.mass)
		
