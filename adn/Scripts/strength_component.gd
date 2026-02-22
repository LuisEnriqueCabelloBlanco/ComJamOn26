class_name StrengthComponent
extends Node

var power_active =false

func toggleStrength(active:bool):
	power_active = active
	pass

func is_active() -> bool:
	return power_active #valor hardcodeado para testing
