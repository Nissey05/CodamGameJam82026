extends Node2D

var hp = 10
var dice_count = 1
var inventory = []

var pot = 0

var enemies = {
	1 : {"health" : 5, "inventory" : ["D6"]},
	2 : {"health" : 30, "inventory" : ["D3", "D3", "D3"]},
	3 : {"health" : 50, "inventory" : ["D6", "D12"]}
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

signal player_damage(damage: int)

func _on_dice_damage_event(damage: int) -> void:
		var tot = $Dice._roll_all()
		if (tot < damage):
			hp -= damage - tot
			pot += damage - tot
			$Health.text = str(hp)
		elif (tot > damage):
			player_damage.emit(tot - damage)
			pot += tot - damage
		if (hp <= 0):
			PlayerData.add_health(pot)
			GameData.level += 1
			SceneManager.goto_loot()
			


func _on_tree_entered() -> void:
	hp = enemies[GameData.level]["health"]
	inventory = enemies[GameData.level]["inventory"]
	dice_count = len(inventory)
	print(inventory, " ", dice_count)
