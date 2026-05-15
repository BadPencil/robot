# Robot WASD Controller — Design Spec

## Goal

A minimal Godot 4 project: a 2D top-down robot that moves with WASD keys. No external assets — all visuals drawn with Godot primitives.

## Architecture

- **Engine**: Godot 4.x
- **Dimension**: 2D top-down
- **Scene tree**: `Root → World (Node2D) → Robot (CharacterBody2D) → Body (ColorRect) + Direction (Polygon2D) + CollisionShape2D`

## Files

| File | Purpose |
|------|---------|
| `project.godot` | Godot project config (renderer=2D, entry=robot.tscn) |
| `scenes/robot.tscn` | Main scene — world root + robot |
| `scripts/robot.gd` | Robot movement script (extends CharacterBody2D) |

## Robot Visuals

- **Body**: 64×64 blue ColorRect, centered
- **Direction indicator**: small red triangle (Polygon2D) pointing forward
- **Collision**: RectangleShape2D matching body size

## Movement

- `W/A/S/D` maps to `Vector2(0,-1) / Vector2(-1,0) / Vector2(0,1) / Vector2(1,0)`
- Diagonal input normalized for consistent speed (e.g., W+A → Vector2(-1,-1).normalized())
- `move_and_slide()` for collision-aware movement
- Speed: 300 pixels/second
- `_physics_process(delta)` for frame-rate-independent movement

## Success Criteria

- [ ] WASD moves the robot in 8 directions
- [ ] Robot faces movement direction (triangle rotates)
- [ ] Moving diagonally is same speed as cardinal directions
- [ ] Camera follows the robot
- [ ] Scene runs when pressing F5 in Godot
