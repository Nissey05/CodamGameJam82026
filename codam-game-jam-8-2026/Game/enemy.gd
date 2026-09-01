extends Node2D

@export var hp = 10

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
			$Health.text = str(hp)
		elif (tot > damage):
			player_damage.emit(tot - damage)
		if (hp <= 0):
			print("You win!")
