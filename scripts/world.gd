extends Node2D


func _draw() -> void:
	var grid_size := 64
	var grid_count := 40
	var offset := Vector2(-grid_size * grid_count / 2, -grid_size * grid_count / 2)
	var color_a := Color(0.25, 0.25, 0.3)
	var color_b := Color(0.3, 0.3, 0.35)

	for x in grid_count:
		for y in grid_count:
			var rect := Rect2(offset + Vector2(x * grid_size, y * grid_size), Vector2(grid_size, grid_size))
			draw_rect(rect, color_a if (x + y) % 2 == 0 else color_b)
