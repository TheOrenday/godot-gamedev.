extends Area2D
var speed = 400.0
var direction = Vector2(1, 1)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += direction * speed * delta
	if position.y <= 64:
		position.y = 64
		direction.y *= -1
	if position.y >= 584:
		position.y = 584
		direction.y *= -1
	if position.x <= 64:
		position.x = 64
		direction.x *= -1
	if position.x >= 1088:
		position.x = 1088
		direction.x *= -1


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("paddle"):
		direction.x = abs(direction.x)
