extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_pressed() -> void:
	$anime.play("new_loop")


func _on_exit_pressed() -> void:
	get_tree().quit()
	


func _on_anime_animation_finished(new_loop) -> void:
	$menu_camera.enabled = false
	$main_game/window/gg/camera.enabled = true
	$"/root/Global".end_anim = true

	
	get_tree().change_scene_to_file("res://scenes/main_game.tscn")
	
	
