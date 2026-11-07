extends Area2D
var speed = 400.0
var direction = Vector2(1, 1)
var scoreright = 0
var scoreleft = 0
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
		scoreright = scoreright + 1
		$"../Label".text = str(scoreright)
		print("Puntos jugador derecha: ", scoreright)
		position = Vector2(576, 324)
		speed = 400
		direction.x = abs(direction.x)
	if position.x >= 1088:
		scoreleft = scoreleft + 1
		$"../Label2".text = str(scoreleft)
		print("Puntos jugador izquierda: ", scoreleft)
		position = Vector2(576, 324)
		speed = 400
		direction.x = -abs(direction.x)


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("paddle"):
		speed += 20
		speed = min(speed, 600)
		if area.name == "paddle2":
			direction.x = -abs(direction.x)
		else:
			direction.x = abs(direction.x)
