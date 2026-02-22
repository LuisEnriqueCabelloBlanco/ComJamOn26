extends Node2D

@export var iconoFuerza : Sprite2D
@export var iconoSalto : Sprite2D
@export var iconoVision : Sprite2D

func _ready() -> void:
	GameManager.pattern1.connect(IconoSalto)
	GameManager.pattern2.connect(IconoVision)
	GameManager.pattern3.connect(IconoFuerza)

func IconoFuerza(b: bool):
	iconoFuerza.visible = b;

func IconoSalto(b: bool):
	iconoSalto.visible = b;

func IconoVision(b: bool):
	iconoVision.visible = b;
