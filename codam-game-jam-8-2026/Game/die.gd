extends PanelContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Die created")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _roll() -> int:
	var rng = RandomNumberGenerator.new()
	rng.seed = hash(Time.get_ticks_usec())
	var nb = rng.randi_range(1, 6)
	$label.text = str(nb)
	return nb
