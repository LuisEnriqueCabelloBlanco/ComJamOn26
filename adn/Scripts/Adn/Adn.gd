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
		if node is Link:
			links.push_back(node as Link)

## Recorre la lista de las bases actualmente seleccionadas y activar o desactiva powerups en función
func UpdateMutations():
	var mutationCont = get_parent() as MutationController
	print(ResolvePatern1(),ResolvePatern2(),ResolvePatern3())
	mutationCont.patern1.emit(ResolvePatern1())
	mutationCont.patern2.emit(ResolvePatern2())
	mutationCont.patern3.emit(ResolvePatern3())

func ResolvePatern1() -> bool:
	if links[0].base != null && links[0].base.baseType == Base.BaseType.THYMINE:
		return true
	return false

func ResolvePatern2() -> bool:
	if links[0].base != null && links[0].base.baseType == Base.BaseType.GUANINE:
		return true
	return false
	
func ResolvePatern3() -> bool:
	if links[0].base != null && links[0].base.baseType == Base.BaseType.ADENINE:
		return true
	return false

func ClearLinks():
	for link in links:
		link.DropBase()
	UpdateMutations()
