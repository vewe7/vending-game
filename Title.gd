extends AnimatedSprite2D

var show_time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	self.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	show_time += delta
	if (show_time > 10):
		queue_free()
