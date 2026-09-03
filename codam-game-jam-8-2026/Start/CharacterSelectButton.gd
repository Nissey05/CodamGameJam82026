extends Button

func _on_pressed() -> void:
	GameData.level = 1
	match self.name:
		"1":
			PlayerData.health = 10
			PlayerData.inventory = ["D6"]
		"2":
			PlayerData.health = 1
			PlayerData.inventory = ["D20"]
		"3":
			PlayerData.health = 30
			PlayerData.inventory = ["D3"]
		"4":
			PlayerData.health = 10
			PlayerData.inventory = ["D3", "D3"]
	get_tree().change_scene_to_file("res://Game/Game.tscn")
