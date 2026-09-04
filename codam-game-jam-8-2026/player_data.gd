extends Node

var health: int = 10
var inventory: Array = ["D6"]
var sprite: String = ""

func damage_event(amount: int) -> void:
	health = max(0, health - amount)

func add_health(amount: int) -> void:
	health += amount

func give_item(item: String) -> void:
	inventory.append(item)
