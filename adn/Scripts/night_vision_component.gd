class_name NightVisionComponent
extends Node

var nightMode:bool = false;
var visibleLayer:Node
var invisibleLayer:Node

func loadNVCLayers(VL:Node, IL:Node) -> void:
	visibleLayer = VL
	invisibleLayer = IL

#Activa la vision nocturna
func toggleNightVision(togglearlo:bool) -> void:
	if visibleLayer!=null:
		visibleLayer.visible = !togglearlo
	if invisibleLayer!=null:
		invisibleLayer.visible = togglearlo
