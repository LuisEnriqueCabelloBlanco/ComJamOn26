extends Node2D
class_name MovingPlatform

@export var points: Array[Node2D]
var direction = true
@export var goingTo = 0
@export var speed = 10

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	var direction = (points[goingTo].position - position).normalized()
	position += direction * speed
	if position.distance_to(points[goingTo].position) < 20:
		if direction:
			if goingTo < points.size():
				goingTo += 1
			else:
				direction = !direction
		else:
			if goingTo > 0:
				pass
