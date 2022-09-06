extends Control


func _ready():
	$VBoxContainer/StartButton.grab_focus()


func _process(delta):
	$CanvasLayer/Control/Time.text = GameStats.final_time


func _on_Quit_pressed():
	get_tree().quit()

func _on_Start_pressed():
	get_tree().change_scene("res://Scenes/World.tscn")
