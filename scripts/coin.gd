class_name Coin

extends Area2D

signal collected

@onready var animation : AnimationPlayer = $AnimationPlayer

func _on_body_entered(_body:Node2D) -> void:
	collected.emit()
	animation.play("pickup")
