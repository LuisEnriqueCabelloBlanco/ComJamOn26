extends Grabable
class_name Base

enum BaseType {
	GUANINE,
	ADENINE,
	CYTOSINE,
	THYMINE }

@export var baseType = BaseType.GUANINE

## El link sobre el que se está encontrando esta base (para ser añadida)
var settingLink : Link

func _on_area_2d_area_entered(area: Area2D) -> void:
	var parent = area.get_parent().get_parent();
	if parent is Link:
		settingLink = parent

func _on_area_2d_area_exited(area: Area2D) -> void:
	if settingLink == null:
		return
	if settingLink == area.get_parent().get_parent():
		settingLink = null

func OnDrop():
	super()
	if settingLink != null:
		settingLink.PutInBase(self)
	else: queue_free()
