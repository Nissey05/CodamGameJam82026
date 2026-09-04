extends Node

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	rng.seed = hash(Time.get_ticks_usec())
