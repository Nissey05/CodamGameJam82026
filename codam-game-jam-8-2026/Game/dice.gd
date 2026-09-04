extends Control

var dice: Array = []

func _create_die(type : String) -> PanelContainer:
	var die = PanelContainer.new()
	var label = RichTextLabel.new()
	var texture = Sprite2D.new()
	var size = 60
	die.position = Vector2(0, 0)
	die.size = Vector2(size, size)
	texture.texture = GameData.dice[type]["blankImageLocation"]
	texture.centered = false
	texture.scale = Vector2(size / 20, size / 20)
	die.tooltip_text = type
	label.name = "label"
	label.fit_content = true
	label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	die.add_child(texture)
	die.add_child(label)
	die.set_script(load("res://Game/die.gd"))
	label.text = str(die.diceValues[type])
	label.add_theme_font_size_override("normal_font_size", 32)

	return die

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in get_parent().dice_count:
		dice.append(_create_die(get_parent().inventory[i]))
		dice[i].position += Vector2(i * 70, 0)
		add_child(dice[i])

signal damage_event(damage : int)

signal set_text(str : String)

func _roll_all() -> int:
	var total = 0
	for i in get_parent().dice_count:
		total += dice[i]._roll(get_parent().inventory[i])
	if get_parent().name == "Player":
		damage_event.emit(total)
	set_text.emit(str(total))
	return total
	
