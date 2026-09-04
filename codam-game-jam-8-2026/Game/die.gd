extends PanelContainer

var diceValues = {
	"D3" : 3,
	"D6" : 6,
	"D12" : 12,
	"D20" : 20,
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _roll(diceType : String) -> int:
	var nb = Rng.rng.randi_range(1, diceValues[diceType])
	$label.text = str(nb)
	return nb
