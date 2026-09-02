extends Button

var item : String = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	if (PlayerData.health >= int(text)):
		PlayerData.give_item(item)
		PlayerData.health -= int(text)
		print("Item bought: ", item, " Health remaining: ", PlayerData.health)
		if (PlayerData.health == 0):
			print("You lose!")
		disabled = true


func _on_loot_items_rolled() -> void:
	var loot_distrib = get_parent().get_parent()
	item = loot_distrib.rolled_items[int(name)]
	icon = load(loot_distrib.dict[item]["imageLocation"])
	text = str(loot_distrib.dict[item]["price"])
	if (PlayerData.health < loot_distrib.dict[item]["price"]):
		add_theme_color_override("font_color", Color.DARK_RED)
