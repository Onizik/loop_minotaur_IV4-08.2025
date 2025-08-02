extends Node2D
var left = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_static_body_2d_body_entered(body: Node2D) -> void:
	if $AnimatedSprite2D.frame == 0:
		left = $"/root/main_game/window/biba".time_left
		$"/root/main_game/window/biba".wait_time =5 + left
		$"/root/main_game/window/biba".start()
		$"/root/main_game/window/gg/anime".play("notification")
		
	self.hide()
