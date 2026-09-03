extends PanelContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Die created")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var diceValues = {
	"D3" : 3,
	"D6" : 6,
	"D12" : 12,
	"D20" : 20,
}

func _roll(diceType : String) -> int:
	var rng = RandomNumberGenerator.new()
	rng.seed = hash(Time.get_ticks_usec())
	var nb = rng.randi_range(1, diceValues[diceType])
	$label.text = str(nb)
	return nb
