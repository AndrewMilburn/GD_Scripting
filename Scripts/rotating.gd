extends Sprite2D

var speed = 400
var rotation_speed = PI
var velocity: Vector2 = Vector2(0,0)

func _process(delta: float) -> void:
	
	rotation += rotation_speed * delta
	velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta
