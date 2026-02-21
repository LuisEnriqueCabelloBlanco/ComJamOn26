extends Node
class_name MutationController

signal patern1(b: bool)
signal patern2(b: bool)
signal patern3(b: bool)


func _ready() -> void:
	GameManager.pattern1.connect(test1d)

## Lanza la señal 1 al game manager
func signalToGM1(b: bool):
	GameManager.pattern1.emit(b)

## Lanza la señal 2 al game manager
func signalToGM2(b: bool):
	GameManager.pattern2.emit(b)

## Lanza la señal 3 al game manager
func signalToGM3(b: bool):
	GameManager.pattern3.emit(b)

# Para ver si las señales funcionan
func test1d(b: bool):
	if b:
		print(" patron 1")

func test2d(b: bool):
	if b:
		print(" patron 2")

func test3d(b: bool):
	if b:
		print(" patron 3")
