extends Node
## Construye objetos de tipo base y cuando se ha agarrado uno crea otro
@export var baseScene : PackedScene

func _ready() -> void:
	instantiateBase()

func _on_child_exiting_tree(node: Node) -> void:
	instantiateBase()

func instantiateBase():
	var childBase = baseScene.instantiate()
	add_child.call_deferred(childBase)
