extends TextureButton

func _on_pressed() -> void:
	GameData.level = 1
	match self.name:
		"1":
			PlayerData.health = 10
			PlayerData.inventory = ["D6"]
			PlayerData.sprite = "res://assets/duck_avatar_white.png"
		"2":
			PlayerData.health = 1
			PlayerData.inventory = ["D20"]
			PlayerData.sprite = "res://assets/duck_avatar_yellow.png"
		"3":
			PlayerData.health = 30
			PlayerData.inventory = ["D3"]
			PlayerData.sprite = "res://assets/duck_avatar_mallard.png"
		"4":
			PlayerData.health = 10
			PlayerData.inventory = ["D3", "D3"]
			PlayerData.sprite = "res://assets/duck_avatar_brown.png"
	get_tree().change_scene_to_file("res://Game/Game.tscn")
