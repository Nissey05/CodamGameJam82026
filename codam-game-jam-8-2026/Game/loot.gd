extends Node2D

# Called when the node enters the scene tree for the first time.

var table : Array = []

var rolled_items : Array = []

var hp = PlayerData.health

signal items_rolled

func _add_dice_to_table() -> void:
	var dict = GameData.dice
	for i in dict["D3"]["weight"]:
		table.append("D3")
	for i in dict["D6"]["weight"]:
		table.append("D6")
	for i in dict["D12"]["weight"]:
		table.append("D12")
	for i in dict["D20"]["weight"]:
		table.append("D20")

func _ready() -> void:
	_add_dice_to_table()
	rolled_items.append(_roll_item())
	rolled_items.append(_roll_item())
	rolled_items.append(_roll_item())
	items_rolled.emit()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _roll_item() -> String:
	var rng = RandomNumberGenerator.new()
	rng.seed = hash(Time.get_ticks_usec())
	var nb = rng.randi_range(0, len(table) - 1)
	var item = table[nb]
	return item

func _on__item_bought() -> void:
	hp = PlayerData.health
	$Health.draw_hp()
