extends Node

var dice = {
	"D3" : {"price": 5, "imageLocation" : "res://assets/D3.png", "weight" : 3, "blankImageLocation" : preload("res://assets/Blank_D3.png")},
	"D6" : {"price": 10, "imageLocation" : "res://assets/D6.png", "weight" : 4, "blankImageLocation" : preload("res://assets/Blank_D6.png")},
	"D12" : {"price": 20, "imageLocation" : "res://assets/D12.png", "weight" : 2, "blankImageLocation" : preload("res://assets/Blank_D12.png")},
	"D20" : {"price": 30, "imageLocation" : "res://assets/D20.png", "weight" : 1, "blankImageLocation" : preload("res://assets/Blank_D20.png")},
}

var level : int = 1
