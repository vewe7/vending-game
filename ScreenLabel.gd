extends Label
signal buy(buy_choice)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_vend_button_pressed(input_val):
	if (input_val == "Enter" && self.text.length() == 2):
		buy.emit(self.text)
	elif (input_val == "Clear"):
		self.text = ""
	elif (input_val.is_valid_int() && self.text.length() == 1):
		self.text += input_val
	elif self.text.length() == 0:
		self.text += input_val
		
