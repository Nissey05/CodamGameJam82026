extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event):
	if Input.is_action_pressed("actionRight"):
		self.position.x += 5
		print("Right pressed")
	if Input.is_action_pressed("actionLeft"):
		self.position.x -= 1
		print("Left pressed")
