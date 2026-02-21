extends Node
class_name MutationController

signal patern1(b: bool)
signal patern2(b: bool)
signal patern3(b: bool)


func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass
# Para ver si las señales funcionan
"""
func test1d(b: bool):
	if b:
		print(" patron 1")

func test2d(b: bool):
	if b:
		print(" patron 2")

func test3d(b: bool):
	if b:
		print(" patron 3")
"""
