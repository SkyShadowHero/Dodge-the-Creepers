extends Area2D

var screen_size 
export var speed = 400 # How fast the player will move (pixels/sec).

func _ready():
	screen_size = get_viewport_rect().size
func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		velocity.x -= 50
	if Input.is_action_pressed("move_left"):
		velocity.x += 50
	if Input.is_action_pressed("move_down"):
		velocity.y -= 50
	if Input.is_action_pressed("move_up"):
		velocity.y += 50
	position += velocity * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
