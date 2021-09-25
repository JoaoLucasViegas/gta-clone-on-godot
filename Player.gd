extends CharacterBody3D

const _movSpeed = 0.1

func _physics_process(delta):
	
	movementPlayer(delta)
	

func movementPlayer(delta: float):
	if Input.is_action_pressed("ui_up", true):
		translate(-transform.basis.z * _movSpeed)
	elif Input.is_action_pressed("ui_down", true):
		translate(+transform.basis.z * _movSpeed)
	
	if Input.is_action_pressed("ui_left", true):
		translate(-transform.basis.x * _movSpeed)
	if Input.is_action_pressed("ui_right", true):
		translate(+transform.basis.x * _movSpeed)
