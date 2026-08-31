extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#might cunning wisdom
func _on_button_pressed() -> void:
	print("Button pressed")
	var rng = RandomNumberGenerator.new()
	rng.seed = hash(Time.get_ticks_usec())
	var nb = rng.randi_range(1, 6)
	print(nb)
