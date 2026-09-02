extends Button

signal rolled

func _on_pressed() -> void:
	SceneManager.goto_characterselect()
