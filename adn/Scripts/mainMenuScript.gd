extends Node2D

@export var firstScene:PackedScene
@export var CreditsScene:PackedScene
@export var glass:Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_texture_button_pressed() -> void:
	print("Pulsado")
	var timer = Timer.new()
	timer.connect("timeout", changeScene)
	timer.connect("timeout", timer.queue_free)
	timer.wait_time = 1
	get_tree().root.add_child(timer)	
	$Vitrina.visible=false
	$AnimatedSprite2D.visible = false
	$VitrinaRota.visible=true
	timer.start()
	pass # Replace with function body.

func changeScene():
	get_tree().change_scene_to_packed(firstScene)


func _on_credits_pressed() -> void:
	get_tree().change_scene_to_packed(CreditsScene)
	pass # Replace with function body.


func _on_quit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.
