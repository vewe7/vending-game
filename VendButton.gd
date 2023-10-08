extends Button
@export var input_val = "A" 
signal val_press(val)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func put_val():
	val_press.emit(self.input_val)
