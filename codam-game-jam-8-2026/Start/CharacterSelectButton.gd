extends Button

func _on_pressed() -> void:
	match self.name:
		"Cook":
			PlayerData.health = 10
		"Miller":
			PlayerData.health = 10
		"Tanner":
			PlayerData.health = 10
		"Smith":
			PlayerData.health = 10
		"Tailor":
			PlayerData.health = 10
		"Abbot":
			PlayerData.health = 10
		
	get_tree().change_scene_to_file("res://Game/Game.tscn")
