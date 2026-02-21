extends Node
class_name MutationController

signal patern1(b: bool)
signal patern2(b: bool)
signal patern3(b: bool)

## Lanza la señal 1 al game manager
func signalToGM1(b: bool):
	GameManager.pattern1.emit(b)

## Lanza la señal 2 al game manager
func signalToGM2(b: bool):
	GameManager.pattern2.emit(b)

## Lanza la señal 3 al game manager
func signalToGM3(b: bool):
	GameManager.pattern3.emit(b)
