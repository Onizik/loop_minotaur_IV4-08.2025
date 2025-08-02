extends CharacterBody2D



const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionx := Input.get_axis("ui_left", "ui_right")
	if directionx:
		velocity.x = directionx * $"/root/Global".SPEED

	else:
		velocity.x = move_toward(velocity.x, 0, $"/root/Global".SPEED)

	var directiony := Input.get_axis("ui_up", "ui_down")
	if directiony:
		velocity.y = directiony * $"/root/Global".SPEED

	else:
		velocity.y = move_toward(velocity.y, 0, $"/root/Global".SPEED)

	move_and_slide()


func _on_time_timeout() -> void:
	pass # Replace with function body.
