extends Area2D
var used = false

func _ready():
	$AnimationPlayer.play("Checkpoint")
	
func _process(delta):
	if GameStats.get_spawn() != self:
		$AnimationPlayer.play("Checkpoint")
		

func _on_SavePoint_body_entered(body):
	if body.is_in_group("Player") and  !used:
		GameStats.set_spawn(self)
		$AnimationPlayer.play("Saved")

func _on_SavePoint_body_exited(body):
	pass
