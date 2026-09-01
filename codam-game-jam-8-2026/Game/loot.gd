extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Shop/Item1.text = _roll_item()
	$Shop/Item2.text = _roll_item()
	$Shop/Item3.text = _roll_item()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var table : Array = ["Dice1", "Dice2", "Dice3"]

func _roll_item() -> String:
	var rng = RandomNumberGenerator.new()
	rng.seed = hash(Time.get_ticks_usec())
	var nb = rng.randi_range(0, len(table) - 1)
	var item = table[nb]
	return item
