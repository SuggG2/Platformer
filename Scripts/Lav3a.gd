extends Area2D


func _ready():
	$AnimationPlayer.play("New Anim")



func _on_Node2D_body_entered(body):
	if body.is_in_group("Player"):
		print("Player Dead")
		if GameStats.check_reset() == false:
			body.global_position = GameStats.get_spawn().global_position
