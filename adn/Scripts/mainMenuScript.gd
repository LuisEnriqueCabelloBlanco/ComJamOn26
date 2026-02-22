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
	$VitrinaRota.visible = true
	$AnimatedSprite2D.visible = false
	$Vitrina.visible = false
	$Levantarse.visible = true
	$Levantarse.connect("animation_finished",changeScene)
	$Levantarse.play("default")
	pass # Replace with function body.

func changeScene():
	get_tree().change_scene_to_packed(firstScene)


func _on_credits_pressed() -> void:
	$UI.visible = false
	$creditsText.visible = true
	pass # Replace with function body.


func _on_quit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.


func _on_button_pressed() -> void:
	$UI.visible = true
	$creditsText.visible = false
	pass # Replace with function body.
