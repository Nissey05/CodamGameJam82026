extends Node

const GAME_SCENE: PackedScene = preload("res://Game/Game.tscn")
const LOOT_SCENE: PackedScene = preload("res://Game/Loot.tscn")
const CHARACTER_SCENE: PackedScene = preload("res://Start/CharacterSelect.tscn")

func goto_game() -> void:
	get_tree().change_scene_to_packed(GAME_SCENE)

func goto_loot() -> void:
	get_tree().change_scene_to_packed(LOOT_SCENE)

func goto_characterselect() -> void:
	get_tree().change_scene_to_packed(CHARACTER_SCENE)
