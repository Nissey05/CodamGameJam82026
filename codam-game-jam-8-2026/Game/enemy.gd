extends Node2D

@export var hp = 10

var dice_count = 1

var pot = 0

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
			SceneManager.goto_loot()
			
