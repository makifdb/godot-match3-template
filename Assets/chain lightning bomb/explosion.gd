extends AnimatedSprite2D

func _on_animation_finished():
	self.queue_free()
