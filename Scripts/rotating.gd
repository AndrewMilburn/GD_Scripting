extends Sprite2D

var angular_speed = PI

func _process(delta: float) -> void:
	rotation += angular_speed * delta
	
