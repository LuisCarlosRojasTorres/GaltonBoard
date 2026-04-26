extends CanvasLayer

const GAME_UI_SCENE = "res://GameUi.tscn"


func _on_button_run_again_button_down() -> void:
	#Deletes the current scene and add a new scene
	get_tree().change_scene_to_file(GAME_UI_SCENE)
	


func _on_button_continue_button_down() -> void:
	queue_free()
	
