extends Container

var twenty_five : Array = []
var five : Array = []
var one : Array = []

func draw_hp() -> void:
	for child in twenty_five:
		remove_child(child)
	for child in five:
		remove_child(child)
	for child in one:
		remove_child(child)
	twenty_five = []
	five = []
	one = []
	var hp = get_parent().hp
	while hp >= 25:
		hp -= 25
		var copy = $twenty_five_chip.duplicate()
		add_child(copy)
		twenty_five.append(copy)
		copy.visible = true
		copy.position -= Vector2(0, 10 * len(twenty_five))
	while hp >= 5:
		hp -= 5
		var copy = $five_chip.duplicate()
		add_child(copy)
		five.append(copy)
		copy.visible = true
		copy.position -= Vector2(0, 10 * len(five))
	while hp >= 1:
		hp -= 1
		var copy = $one_chip.duplicate()
		add_child(copy)
		one.append(copy)
		copy.visible = true
		copy.position -= Vector2(0, 10 * len(one))

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	draw_hp()
