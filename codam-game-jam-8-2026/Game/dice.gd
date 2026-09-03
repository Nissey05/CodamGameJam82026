extends Control

var dice: Array = []

func _create_die() -> PanelContainer:
	var die = PanelContainer.new()
	var label = RichTextLabel.new()
	die.position = Vector2(0, 0)
	die.size = Vector2(40, 40)
	label.name = "label"
	label.text = str(0)
	label.fit_content = true
	label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	die.add_child(label)
	die.set_script(load("res://Game/die.gd"))

	return die

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("parent ", get_parent().name, " Dice_count: ", get_parent().dice_count)
	for i in get_parent().dice_count:
		dice.append(_create_die())
		dice[i].position += Vector2(i * 50, 0)
		add_child(dice[i])

signal damage_event(damage : int)

func _roll_all() -> int:
	var total = 0
	for i in get_parent().dice_count:
		total += dice[i]._roll(get_parent().inventory[i])
	if get_parent().name == "Player":
		damage_event.emit(total)
	return total

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
