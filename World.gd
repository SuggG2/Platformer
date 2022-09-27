extends Node2D


func _ready():
	pass 

func _process(delta):

	if Input.is_action_just_pressed("Reset"):
		GameStats.reset()

func on_Area2D_body_entered(body):
	pass
