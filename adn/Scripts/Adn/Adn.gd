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
	
	GameManager.on_player_readied.connect(UpdateMutations)

## Recorre la lista de las bases actualmente seleccionadas y activar o desactiva powerups en función
func UpdateMutations():
	var mutationCont = get_parent() as MutationController
	#Se asegura de que todos los links tengan base
	var flag = true
	var i = 0
	while flag == true && i < links.size():
		if links[i].base == null:
			flag = false
		i += 1
	
	print("ADN Flag Status:",flag)
	if flag:
		mutationCont.patern1.emit(ResolvePatern1())
		mutationCont.patern2.emit(ResolvePatern2())
		mutationCont.patern3.emit(ResolvePatern3())

func ResolvePatern1() -> bool:
	if (links[0].base != null && links[0].base.baseType == Base.BaseType.THYMINE
	&& links[1].base != null && links[1].base.baseType == Base.BaseType.ADENINE
	&& links[4].base != null && links[4].base.baseType == Base.BaseType.THYMINE):
		return true
	return false

# *AG*G
func ResolvePatern2() -> bool:
	if (links[0].base != null && links[0].base.baseType == Base.BaseType.CYTOSINE
		&& links[2].base != null && links[2].base.baseType == Base.BaseType.GUANINE
		&& links[3].base != null && links[3].base.baseType == Base.BaseType.GUANINE):
		return true
	return false
	
func ResolvePatern3() -> bool:
	if (links[1].base != null && links[1].base.baseType == Base.BaseType.ADENINE
	&& links[2].base != null && links[2].base.baseType == Base.BaseType.GUANINE
	&& links[4].base != null && links[4].base.baseType == Base.BaseType.GUANINE):
		return true
	return false

func ClearLinks():
	var mutationCont = get_parent() as MutationController
	for link in links:
		link.DropBase()
	mutationCont.patern1.emit(false)
	mutationCont.patern2.emit(false)
	mutationCont.patern3.emit(false)
