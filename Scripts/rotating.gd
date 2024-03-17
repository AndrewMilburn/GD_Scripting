extends Sprite2D

var angular_speed = PI
var rotation_speed = PI


func _process(delta: float) -> void:
	var velocity = Vector2.UP * 50
	
	rotation += rotation_speed * delta
	
	position += velocity.rotated(angular_speed) * delta
