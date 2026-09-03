extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_dice_set_text(str: String) -> void:
	visible = true
	text = str
	print("newText: ", str)
