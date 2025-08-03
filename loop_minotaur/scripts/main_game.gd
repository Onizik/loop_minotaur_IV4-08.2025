extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$window/items/watch/AnimatedSprite2D.frame = 0
	$window/items/watch2/AnimatedSprite2D.frame = 0
	$window/items/watch3/AnimatedSprite2D.frame = 0
	$window/items/boot/AnimatedSprite2D.frame = 5
	$window/biba.wait_time = $"/root/Global".start_time
	$"/root/Global".start = false
	$window/gg/AnimatedSprite2D.play("idle")
	
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$window/gg/HUD/time.text = str(int($window/biba.time_left))
	if $"/root/Global".end_anim:                             
		$window/gg/HUD.show()
		$window/biba.start()
		$"/root/Global".end_anim = false
		
	


func _on_biba_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
