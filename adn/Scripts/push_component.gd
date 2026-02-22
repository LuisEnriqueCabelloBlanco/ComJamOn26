class_name PushComponent
extends Node

@export_subgroup("Settings")
@export var push_force:float = 50.0

func handle_wood_pushing(body: CharacterBody2D)->void:
	for i in body.get_slide_collision_count(): 
		var c = body.get_slide_collision(i)
		if c.get_collider() is WoodenBox and body.is_on_floor():
			c.get_collider().apply_central_impulse(-c.get_normal() * push_force)
			
func handle_metal_pushing(body: CharacterBody2D)->void:
	for i in body.get_slide_collision_count(): 
		var c = body.get_slide_collision(i)
		if c.get_collider() is MetalBox and body.is_on_floor():
			c.get_collider().apply_central_impulse(-c.get_normal() * push_force)
		elif c.get_collider() is WoodenBox:
			# destruir caja, añadir delay?
			c.get_collider().free()
