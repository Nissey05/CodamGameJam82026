extends Node2D

# Called when the node enters the scene tree for the first time.

var dict = {
	"Dice1" : {"price": 5, "imageLocation" : "res://1.png"},
	"Dice2" : {"price": 10, "imageLocation" : "res://2.png"},
	"Dice3" : {"price": 20, "imageLocation" : "res://3.png"}
}

var table : Array = ["Dice1", "Dice2", "Dice3"]

var rolled_items : Array = []

signal items_rolled

func _ready() -> void:
	rolled_items.append(_roll_item())
	rolled_items.append(_roll_item())
	rolled_items.append(_roll_item())
	$Shop/Chips.text = str(PlayerData.health)
	items_rolled.emit()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#func _get_rolled_item() -> String:

func _roll_item() -> String:
	var rng = RandomNumberGenerator.new()
	rng.seed = hash(Time.get_ticks_usec())
	var nb = rng.randi_range(0, len(table) - 1)
	var item = table[nb]
	return item


func _on_continue_pressed() -> void:
	pass # Replace with function body.


func _on__item_bought() -> void:
	$Shop/Chips.text = str(PlayerData.health)
