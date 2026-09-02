extends Button

var item : String = ""
var loot_distrib = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	loot_distrib = get_parent().get_parent()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

signal item_bought

func _on_pressed() -> void:
	if (PlayerData.health >= int(text)):
		PlayerData.give_item(item)
		PlayerData.health -= int(text)
		if (PlayerData.health == 0):
			SceneManager.goto_death()
		item_bought.emit()
		disabled = true


func _on_loot_items_rolled() -> void:
	item = loot_distrib.rolled_items[int(name)]
	icon = load(loot_distrib.dict[item]["imageLocation"])
	text = str(loot_distrib.dict[item]["price"])
	if (PlayerData.health < loot_distrib.dict[item]["price"]):
		add_theme_color_override("font_color", Color.DARK_RED)

func _on_item_bought() -> void:
	if (PlayerData.health < loot_distrib.dict[item]["price"]):
		add_theme_color_override("font_color", Color.DARK_RED)
