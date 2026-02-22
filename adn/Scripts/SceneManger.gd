extends Node

var currentScene = 0

@export var levels : Array[PackedScene]
@export var topViewportNode : Node
@export var botViewportNode : Node
@export var mainMenu : PackedScene

func _ready() -> void:
	GameManager.restart_level.connect(restart_level)
	GameManager.next_level.connect(next_level)
	load_target_scene(0)

func load_target_scene(i: int):
	var old = topViewportNode.get_child(0)
	var new = levels[currentScene].instantiate()
	if old != null:
		old.queue_free()
	topViewportNode.add_child.call_deferred(new)

func restart_level():
	load_target_scene(currentScene)

func next_level():
	currentScene += 1
	if currentScene >= levels.size():
		get_tree().change_scene_to_packed(mainMenu)
	else:
		load_target_scene(currentScene)

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("reiniciar"):
		load_target_scene(currentScene)
