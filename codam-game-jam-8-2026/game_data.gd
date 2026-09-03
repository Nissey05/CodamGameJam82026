extends Node

var dice = {
	"D3" : {"price": 5, "imageLocation" : "res://assets/1.png", "weight" : 3},
	"D6" : {"price": 10, "imageLocation" : "res://assets/2.png", "weight" : 4},
	"D12" : {"price": 20, "imageLocation" : "res://assets/3.png", "weight" : 2},
	"D20" : {"price": 30, "imageLocation" : "res://assets/3.png", "weight" : 1},
}

var level : int = 1

func _calculate_power() -> void:
	var inv = PlayerData.inventory
	var total_power : int = 0
	for die in inv:
		total_power += inv[die]["weight"]
	var power : int = total_power / len(inv)
	pass
