extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

var hp = PlayerData.health
var dice_count = len(PlayerData.inventory)

func _on_enemy_player_damage(damage: int) -> void:
	PlayerData.damage_event(damage)
	$Health.text = str(PlayerData.health)
	if (PlayerData.health <= 0):
		SceneManager.goto_death()
