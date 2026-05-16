# Random Enemy — Design Spec

## Goal

Add a randomly moving enemy to the existing Godot robot scene. No external assets.

## Architecture

- **New entity**: Enemy as CharacterBody2D, child of Floor (sibling of Robot)
- **Visual**: Red circle drawn via `_draw()`, 28px radius
- **Movement**: Random direction, changes every 1-3 seconds, reverses at boundaries
- **Physics**: Collision with Robot pushes both apart via `move_and_slide()`

## Files

| File | Action | Purpose |
|------|--------|---------|
| `scripts/enemy.gd` | Create | Random movement + drawing |
| `scenes/enemy.tscn` | Create | Enemy scene with collision |
| `scenes/robot.tscn` | Modify | Add Enemy instance |

## Enemy Behavior

- Speed: 150 px/s (half of Robot's 300)
- Random direction: normalized Vector2, re-picked every 1-3s
- Boundary: reverses direction when past 1200px from center (floor is 1280px)
- Collision: same handling as Robot, `move_and_slide()`

## Success Criteria

- [ ] Red circle enemy wanders randomly on the floor
- [ ] Enemy stays within the floor area
- [ ] Robot and enemy collide/push each other
- [ ] No new errors in Godot console
