extends Sprite2D

var speed = 200
var rotation_speed = PI
var velocity: Vector2 = Vector2(0,0)

func _process(delta: float) -> void:
	
	if Input.is_action_pressed("ui_right"):
		rotation_speed += 0.1
	elif Input.is_action_pressed("ui_left"):
		rotation_speed -= 0.1
	
	if Input.is_action_pressed("ui_up"):
		speed += 10
	elif Input.is_action_pressed("ui_down"):
		speed -= 10
	
	rotation += rotation_speed * delta
	velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta
