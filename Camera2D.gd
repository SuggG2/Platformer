extends Camera2D

var zoomed = true
onready var target = get_parent().get_node("Player")
onready var center = get_viewport_rect().size/2

func _process(delta):
	if zoomed:
		zoom = Vector2(0.3,0.3)
		position =  target.global_position
	else:
		zoom = Vector2(1,1)
		position = center

	if Input.is_action_just_pressed("zoom"):
		zoomed = not zoomed
