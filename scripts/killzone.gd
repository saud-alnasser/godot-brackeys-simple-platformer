extends Area2D

@onready var timer := $Timer

func _on_body_entered(_body:Node2D) -> void:
	timer.start()


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
