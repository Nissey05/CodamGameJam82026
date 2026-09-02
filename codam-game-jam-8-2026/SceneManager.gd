extends Node

const GAME_SCENE: PackedScene = preload("res://Game/Game.tscn")
const LOOT_SCENE: PackedScene = preload("res://Game/Loot.tscn")
const CHARACTER_SCENE: PackedScene = preload("res://Start/CharacterSelect.tscn")
const DEATH_SCENE: PackedScene = preload("res://Start/Death.tscn")
const START_SCENE: PackedScene = preload("res://Start/Start.tscn")

func goto_game() -> void:
	get_tree().change_scene_to_packed(GAME_SCENE)

func goto_loot() -> void:
	get_tree().change_scene_to_packed(LOOT_SCENE)

func goto_characterselect() -> void:
	get_tree().change_scene_to_packed(CHARACTER_SCENE)

func goto_death() -> void:
	get_tree().change_scene_to_packed(DEATH_SCENE)

func goto_start() -> void:
	get_tree().change_scene_to_packed(START_SCENE)
