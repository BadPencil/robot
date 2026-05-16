extends CharacterBody2D

@export var speed: float = 150.0
@export var boundary: float = 1200.0

var _direction := Vector2.ZERO
var _change_timer := 0.0


func _ready() -> void:
	pick_direction()


func _physics_process(delta: float) -> void:
	_change_timer -= delta
	if _change_timer <= 0.0:
		pick_direction()

	if position.length() > boundary:
		pick_direction()
		position = position.normalized() * boundary

	velocity = _direction * speed
	move_and_slide()

	if get_last_slide_collision():
		pick_direction()


func pick_direction() -> void:
	_direction = Vector2(randf_range(-1.0, 1.0), randf_range(-1.0, 1.0)).normalized()
	_change_timer = randf_range(1.0, 3.0)


func _draw() -> void:
	draw_circle(Vector2.ZERO, 28, Color(0.9, 0.1, 0.1))
	draw_circle(Vector2(-8, -5), 5, Color.WHITE)
	draw_circle(Vector2(8, -5), 5, Color.WHITE)
	draw_circle(Vector2(-7, -5), 2, Color.BLACK)
	draw_circle(Vector2(9, -5), 2, Color.BLACK)
	draw_line(Vector2(-16, -14), Vector2(-6, -8), Color.BLACK, 2)
	draw_line(Vector2(16, -14), Vector2(6, -8), Color.BLACK, 2)
