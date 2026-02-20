class_name CameraFollow
extends Camera2D

@export_subgroup("Nodes")

@export var followNode:Node2D

@export_subgroup("Settings")
@export var cameraSpeed:float

func _process(delta: float) -> void:
	if(self.position.x - followNode.position.x) > 100:
		self.position.x -=cameraSpeed*delta
	elif (self.position.x - followNode.position.x) < -100:
		self.position.x +=cameraSpeed*delta
		
