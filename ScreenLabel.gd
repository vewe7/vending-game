extends Label
signal buy(buy_choice)
@export var balance_label: Label
var balance = 5
var PRICES = {"A1": 3, "A2": 3, "A3": 3, "A4": 3, "A5": 3,
			  "B1": 3, "B2": 3, "B3": 3, "B4": 3, "B5": 3,
			  "C1": 2, "C2": 2, "C3": 2, "C4": 2, "C5": 2,
			  "D1": 2, "D2": 2, "D3": 2, "D4": 2, "D5": 1, "D6": 1, "D7": 1, 
			  "E1": 1, "E2": 1, "E3": 1, "E4": 1, "E5": 1, "E6": 1, "E7": 1 
}

var MASSES = {"A1": .85, "A2": .85, "A3": .85, "A4": .85, "A5": .85,
			  "B1": .85, "B2": .85, "B3": .85, "B4": .7, "B5": .7,
			  "C1": 1.25, "C2": 1.25, "C3": 1.25, "C4": .85, "C5": .85,
			  "D1": 1.25, "D2": 1.25, "D3": .7, "D4": .7, "D5": .7, "D6": .7, "D7": .7, 
			  "E1": .7, "E2": .7, "E3": .7, "E4": .7, "E5": .7, "E6": .7, "E7": .7 
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
	if (input_val == "Enter"):
		if (self.text.length() == 2 && !((self.text[0] == "A" || self.text[0] == "B" || self.text[0] == "C") && self.text[1] > "5")):
			var price = PRICES[self.text]
			if balance - price >= 0:
				balance -= price
				update_balance_label()
				get_parent().get_parent().get_node("Spawner" + self.text)._spawn_item(MASSES[self.text])
			self.text = ""
	elif (input_val == "Clear"):
		self.text = ""
	elif (input_val.is_valid_int()):
		if (self.text.length() == 1):
			self.text += input_val
	elif self.text.length() == 0:
		self.text += input_val


func _on_vend_button_gexed(extra_arg_0):
	_on_vend_button_pressed(extra_arg_0)



func _on_vend_button_gexed_amongus(extra_arg_0):
	_on_vend_button_pressed(extra_arg_0)
