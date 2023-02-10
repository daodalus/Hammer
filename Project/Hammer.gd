extends KinematicBody2D

export var power = 200
var inAir = false
onready var target = get_viewport().get_mouse_position()

func jump(mousePosition):
	if(Input.is_action_just_pressed("left_click")):
		target = mousePosition
		inAir = true
	if(inAir):position += (target - position)/10
func _physics_process(delta):
	jump(get_viewport().get_mouse_position())
