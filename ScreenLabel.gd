extends Label
signal buy(buy_choice)
@export var balance_label: Label
var balance = 10
var PRICES = {"A1": 1, "A2": 1, "A3": 1, "A4": 1, "A5": 1,
			  "B1": 1, "B2": 1, "B3": 1, "B4": 1, "B5": 1,
			  "C1": 1, "C2": 1, "C3": 1, "C4": 1, "C5": 1,
			  "D1": 1, "D2": 1, "D3": 1, "D4": 1, "D5": 1, "D6": 1, "D7": 1, 
			  "E1": 1, "E2": 1, "E3": 1, "E4": 1, "E5": 1, "E6": 1, "E7": 1 
}

# Called when the node enters the scene tree for the first time.
func _ready():
	update_balance_label()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func update_balance_label():
	balance_label.text = "$" + str(balance)

func _on_vend_button_pressed(input_val):
	if (input_val == "Enter" && self.text.length() == 2):
		var price = PRICES[self.text]
		self.text = ""
		if balance - price >= 0:
			balance -= price
			update_balance_label()
	elif (input_val == "Clear"):
		self.text = ""
	elif (input_val.is_valid_int() && self.text.length() == 1):
		self.text += input_val
	elif self.text.length() == 0:
		self.text += input_val


func _on_vend_button_gexed(extra_arg_0):
	_on_vend_button_pressed(extra_arg_0)



func _on_vend_button_gexed_amongus(extra_arg_0):
	_on_vend_button_pressed(extra_arg_0)
