extends Node2D
class_name Link

## El desplazamiento con respecto a la base colocada de la complementaria
@export var complementaryBaseOffset : int
## Representa un eslabón en la cadena sobre el que colocar una base
var base : Base
const basesPath = "res://Scenes/AdnCosas/Bases/"

# Pone una base en este eslabón de la cadena. 
func PutInBase(base : Base):
	if (self.base != null):
		self.base.queue_free()
	base.get_parent().remove_child(base)
	add_child(base)
	self.base = base
	base.global_position = global_position
	base.global_rotation = global_rotation
	base.grabActive = false
	
	# llama a actualizar los estados de mutaciones en el adn
	var adn = get_parent() as Adn
	adn.UpdateMutations()
