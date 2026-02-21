extends Sprite2D

func _ready() -> void:
	HideMouseAndShowNewCursor(true)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		position = get_global_mouse_position()+Vector2(64,64)
		var viewport = get_viewport_rect()
		if !viewport.has_point(get_global_mouse_position()):
			HideMouseAndShowNewCursor(false)
		else:
			HideMouseAndShowNewCursor(true)
		position.x = clamp(position.x, viewport.position.x, viewport.end.x)
		position.y = clamp(position.y, viewport.position.y, viewport.end.y)

func HideMouseAndShowNewCursor(b : bool):
	if b:
		visible = true;
		Input.mouse_mode = Input.MOUSE_MODE_HIDDEN
	else:
		visible = false;
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
