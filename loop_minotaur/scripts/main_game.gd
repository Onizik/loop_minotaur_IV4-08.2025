extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$watch/AnimatedSprite2D.frame = 0
	$watch2/AnimatedSprite2D.frame = 0
	$watch3/AnimatedSprite2D.frame = 0
	$boot/AnimatedSprite2D.frame = 5
	$biba.wait_time = $"/root/Global".start_time
	$"/root/Global".start = false
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$gg/HUD/time.text = str(int($biba.time_left))
		
	


func _on_biba_timeout() -> void:
	pass # Replace with function body.
