extends Button

signal rolled

func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Start/CharacterSelect.tscn")
