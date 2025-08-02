extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_static_body_2d_body_entered(body: Node2D) -> void:
	if $AnimatedSprite2D.frame == 1:
		$"/root/Global".SPEED +=200
	self.hide()
