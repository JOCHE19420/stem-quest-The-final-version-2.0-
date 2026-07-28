extends Control


func _on_start_pressed():

	GameManager.reset()

	get_tree().change_scene_to_file(
		"res://scenes/QuizRoom.tscn"
	)
