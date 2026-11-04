extends Sprite2D
var speed = 300
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_right"):
		position.x = position.x + speed * delta
	if Input.is_action_pressed("ui_left"):
		position.x = position.x - speed * delta
	if Input.is_action_pressed("ui_up"):
		position.y = position.y - speed * delta
	if Input.is_action_pressed("ui_down"):
		position.y = position.y + speed * delta
	position.x = clamp(position.x, 64, 1088)
	position.y = clamp(position.y, 64, 584)
