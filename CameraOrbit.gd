extends Node3D

var lookSensitivity : float = 15.0

var minLookAngle : float = -20.0
var maxLookAngle : float = 75.0

var mouseDelta : Vector2 = Vector2()
var player = get_parent()

func _input(event) : 
	if event is InputEventMouseMotion:
		mouseDelta = event.relative

func _process(delta):
	
	var rot = Vector3(mouseDelta.y, mouseDelta.x, 0) * lookSensitivity * delta
	rotation.x = rot.x
	rotation.x = clamp(rotation.x, minLookAngle, maxLookAngle)
	
	player.rotation.y -= rot.y
	
	mouseDelta = Vector2()
