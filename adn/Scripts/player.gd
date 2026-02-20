extends CharacterBody2D

@export_subgroup("Nodes")
@export var gravity_component:GravityComponent
@export var movement_componet:MovementComponent
@export var input_component:InputComponent
@export var jump_component:JumpComponent

func _physics_process(delta: float) -> void:
	
	movement_componet.handle_horizontal_movement(self,input_component.input_horizontal)
	gravity_component.handle_gravity(self,delta)
	jump_component.handle_jump(self,input_component.get_jump_input())
	move_and_slide()
