class_name NightVisionComponent
extends Node

var nightMode:bool = false;
var visibleLayer:Node
var invisibleLayer:Node

func loadNVCLayers(VL:Node, IL:Node) -> void:
	visibleLayer = VL
	invisibleLayer = IL


func toggleNightVision(togglearlo:bool) -> void:
	if togglearlo:
		if visibleLayer!=null:
			visibleLayer.visible = !visibleLayer.visible
		if invisibleLayer!=null:
			invisibleLayer.visible = !invisibleLayer.visible
