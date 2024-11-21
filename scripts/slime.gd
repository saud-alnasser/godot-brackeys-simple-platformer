class_name Slime

extends Node2D

@export var speed := 60.0
var direction := 1

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var raycast_right: RayCast2D = $Sight/RayCast2DRight
@onready var raycast_left: RayCast2D = $Sight/RayCast2DLeft

func _process(delta: float) -> void:
	if raycast_right.is_colliding():
		direction = -1
		sprite.flip_h = true

	if raycast_left.is_colliding():
		direction = 1
		sprite.flip_h = false

	position.x += direction * speed * delta
