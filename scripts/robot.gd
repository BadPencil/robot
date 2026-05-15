extends CharacterBody2D

@export var speed: float = 300.0


func _physics_process(delta: float) -> void:
	var direction := Vector2.ZERO

	if Input.is_key_pressed(KEY_A) or Input.is_key_pressed(KEY_LEFT):
		direction.x -= 1
	if Input.is_key_pressed(KEY_D) or Input.is_key_pressed(KEY_RIGHT):
		direction.x += 1
	if Input.is_key_pressed(KEY_W) or Input.is_key_pressed(KEY_UP):
		direction.y -= 1
	if Input.is_key_pressed(KEY_S) or Input.is_key_pressed(KEY_DOWN):
		direction.y += 1

	if direction.length() > 0:
		direction = direction.normalized()

	velocity = direction * speed
	move_and_slide()

	if direction.length() > 0:
		rotation = direction.angle()


func _draw() -> void:
	# Body
	draw_rect(Rect2(-32, -32, 64, 64), Color(0.2, 0.4, 0.8))
	# Eyes
	draw_circle(Vector2(-10, -8), 6, Color.WHITE)
	draw_circle(Vector2(10, -8), 6, Color.WHITE)
	draw_circle(Vector2(-8, -8), 3, Color.BLACK)
	draw_circle(Vector2(12, -8), 3, Color.BLACK)
	# Direction arrow
	var arrow := PackedVector2Array([
		Vector2(38, 0),
		Vector2(22, -10),
		Vector2(22, 10)
	])
	draw_polygon(arrow, PackedColorArray([Color.RED, Color.RED, Color.RED]))
