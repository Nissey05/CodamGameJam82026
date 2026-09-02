extends PopupMenu


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.popup(Rect2i(50, 50, 50, 50))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
