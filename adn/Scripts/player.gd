extends CharacterBody2D
class_name Player

@export_subgroup("Nodes")
@export var gravity_component:GravityComponent
@export var movement_componet:MovementComponent
@export var input_component:InputComponent
@export var jump_component:JumpComponent
@export var night_vision_component:NightVisionComponent
@export var animaton_component:AnimationComponent

var platform

@export_subgroup("Night Vision Layers")
@export var visibleLayer:Node
@export var invisibleLayer:Node

func _physics_process(delta: float) -> void:
	
	movement_componet.handle_horizontal_movement(self,input_component.input_horizontal)
	gravity_component.handle_gravity(self,delta)
	jump_component.handle_jump(self,input_component.get_jump_input())
	animaton_component.handle_jump_animation(jump_component.is_jumping,gravity_component.is_falling)
	if not jump_component.is_jumping and not gravity_component.is_falling:
		animaton_component.handle_move_animaton(input_component.input_horizontal)
	night_vision_component.toggleNightVision(input_component.get_night_vision_input())
	move_and_slide()

func _ready() -> void:
	GameManager.pattern1.connect(powerUp1)
	GameManager.pattern2.connect(powerUp2)
	GameManager.pattern3.connect(powerUp3)
	
	night_vision_component.loadNVCLayers(visibleLayer, invisibleLayer)
	
func powerUp1(active:bool):
	night_vision_component.toggleNightVision(active)
	print(active)

func powerUp2(active:bool):
	print(active)
	
func powerUp3(active:bool):
	print(active)
