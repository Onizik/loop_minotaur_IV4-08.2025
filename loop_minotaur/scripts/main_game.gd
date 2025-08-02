extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$watch/AnimatedSprite2D.frame = 1
	$watch2/AnimatedSprite2D.frame = 1
	$watch3/AnimatedSprite2D.frame = 1
	$boot/AnimatedSprite2D.frame = 5



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
