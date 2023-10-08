extends RigidBody2D

@export var stuckness = 100 # When this reaches 0, the snack should fall
@export var UNSTUCK_CONST = 0.07
var delay_sum = 0
var win_scene = preload("res://win_screen.tscn").instantiate()
# Called when the node enters the scene tree for the first time.
func _ready():
	print("meow ready")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (stuckness <= 0):
		set_freeze_enabled(false)
		delay_sum += delta
	if (delay_sum > 1.2):
		get_tree().change_scene_to_file("res://win_screen.tscn")
	
#func _on_body_entered(body):
#	print(body)
	
func take_hit(hit_velocity, hit_mass):
	stuckness -= abs(hit_velocity.y * hit_mass * UNSTUCK_CONST)
	print("hit velocity:")
	print(hit_velocity)
	print("new stuckness:")
	print(stuckness)
