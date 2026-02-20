extends CharacterBody2D

@export_subgroup("Nodes")
@export var gravity_component:GravityComponent
@export var movement_componet:MovementComponent
@export var input_component:InputComponent
@export var jump_component:JumpComponent
@export var night_vision_component:NightVisionComponent

@export_subgroup("Night Vision Layers")
@export var visibleLayer:Node
@export var invisibleLayer:Node

func _physics_process(delta: float) -> void:
	
	movement_componet.handle_horizontal_movement(self,input_component.input_horizontal)
	gravity_component.handle_gravity(self,delta)
	jump_component.handle_jump(self,input_component.get_jump_input())
	night_vision_component.toggleNightVision(input_component.get_night_vision_input())
	move_and_slide()

func _ready() -> void:
	night_vision_component.loadNVCLayers(visibleLayer, invisibleLayer)
