extends RigidBody2D
func _ready():
	$AnimatedSprite.playing = true
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = "walk"
	$Timer.start()


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_Timer_timeout():
	hide()
