extends Node
class_name Adn
## Comportamiento del sistema de adn.
## Bases:
## Adenina <-> Timina
## Citosina <-> Guanina

## Array con los nodos ordenados de cada par de la cadena
## Cada uno puede tener una base asociada que será revisada para determinar las mutaciones
var links: Array[Link]

func _ready() -> void:
	var nodes = get_children()
	
	for node in nodes:
		links.push_back(node as Link)

## Recorre la lista de las bases actualmente seleccionadas y activar o desactiva powerups en función
func UpdateMutations():
	pass
