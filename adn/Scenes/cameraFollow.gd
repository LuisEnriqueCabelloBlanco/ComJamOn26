class_name CameraFollow
extends Camera2D

@export_subgroup("Nodes")

@export var followNode:Node2D

@export_subgroup("Settings")
@export var cameraSpeed:float = 250
@export var cameraMargin:float = 50

func _process(delta: float) -> void:
	if(self.position.x - followNode.position.x) > cameraMargin:
		self.position.x -=cameraSpeed*delta
	elif (self.position.x - followNode.position.x) < -cameraMargin:
		self.position.x +=cameraSpeed*delta
		
