extends Button

func _on_pressed() -> void:
	match self.name:
		"Cook":
			print("Cook")
		"Miller":
			print("Miller")
		"Tanner":
			print("Tanner")
		"Smith":
			print("Smith")
		"Tailor":
			print("Tailor")
		"Abbot":
			print("Abbot")
		
	get_tree().change_scene_to_file("res://Game/Game.tscn")
