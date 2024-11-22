class_name Game

extends Node2D

@export var coins: Node2D
@export var score_label: Label

var score := 0

func _ready() -> void:
	for coin in coins.get_children():
		if coin is Coin:
			coin.collected.connect(collect_coin)
		else:
			print("warning: there is a non-coin child node in the coins node")

func collect_coin() -> void:
	score += 1
	score_label.text = "You collected %d coins" % score
