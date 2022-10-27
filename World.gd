extends Node2D


func _ready():
	pass 

func _process(delta):

	if Input.is_action_just_pressed("Reset"):
		GameStats.reset()
	$CanvasLayer/Control/Label.text = GameStats.get_time()
func on_Area2D_body_entered(body):
	pass
