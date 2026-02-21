extends Node2D
class_name MovingPlatform

@export var points: Array[Node2D]
# indica si va hacia adelante por el array o a la inversa
var forward = true
var velocity = Vector2(0,0)
@export var target = 0
@export var speed = 200

func _physics_process(delta: float) -> void:
	var target_position = points[target].global_position
	
	var direction = (target_position - global_position).normalized()
	if global_position.distance_to(target_position) < 5:
		siguiente_punto()
		return
	velocity = direction * speed * delta
	global_position += velocity

func siguiente_punto():
	if forward:
		if target < points.size() - 1:
			target += 1
		else:
			forward = false
			target -= 1
	else:
		if target > 0:
			target -= 1
		else:
			forward = true
			target += 1


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		body.platform = self

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is Player:
		if body.platform == self:
			body.platform = null
