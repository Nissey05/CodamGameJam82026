extends Control

var dice: Array = []

func _create_die(type : String) -> PanelContainer:
	var die = PanelContainer.new()
	var label = RichTextLabel.new()
	die.position = Vector2(0, 0)
	die.size = Vector2(40, 40)
	label.name = "label"
	label.fit_content = true
	label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	die.add_child(label)
	die.set_script(load("res://Game/die.gd"))
	label.text = str(die.diceValues[type])

	return die

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in get_parent().dice_count:
		dice.append(_create_die(get_parent().inventory[i]))
		dice[i].position += Vector2(i * 50, 0)
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
	
