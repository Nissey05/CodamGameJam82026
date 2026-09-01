extends Node2D

@export var hp = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


func _on_enemy_player_damage(damage: int) -> void:
	hp -= damage
	$Health.text = str(hp)
	if (hp <= 0):
		print("You Lose!")
