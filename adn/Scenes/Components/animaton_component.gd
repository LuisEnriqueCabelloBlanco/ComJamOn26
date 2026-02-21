class_name AnimationComponent
extends Node

@export_subgroup("Nodes")
@export var sprite:AnimatedSprite2D

func handle_horizontal_flip(move_dir: float)->void:
	if move_dir==0:
		return
	sprite.flip_h = false if move_dir > 0 else true
	
func handle_move_animaton(move_direcction:float)->void:
	handle_horizontal_flip(move_direcction)
	
	if move_direcction != 0:
		sprite.play("default")

func handle_jump_animation(is_jumping:bool, is_falling:bool)->void:
	if is_jumping:
		sprite.play("jumpUp")
	elif is_falling:
		sprite.play("jumpDown")
	pass
