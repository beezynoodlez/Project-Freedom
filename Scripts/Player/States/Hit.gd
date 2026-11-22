extends PlayerState


func _physics_process(delta):
	parent.animator.play("hurt")
	# gravity
	parent.movement.y += parent.grv/GlobalFunctions.div_by_delta(delta)
	
	# exit if on floor
	if parent.ground and parent.movement.y >= 0:
		parent.movement.x = 0
		parent.set_state(parent.STATES.NORMAL)


func _on_screen_check_property_list_changed() -> void:
	pass # Replace with function body.
