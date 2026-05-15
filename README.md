# Robot WASD

A minimal Godot 4 2D project with a WASD-controlled robot.

## How to Run

1. Open [Godot 4.x](https://godotengine.org)
2. Import or open `D:\robot\project.godot`
3. Press **F5** to run

## Controls

| Key | Action |
|-----|--------|
| W / ↑ | Move up |
| A / ← | Move left |
| S / ↓ | Move down |
| D / → | Move right |

The robot faces the direction of movement. A red arrow indicates the forward direction.

## Project Structure

```
├── project.godot        # Godot project config
├── scenes/robot.tscn    # Main scene
├── scripts/
│   ├── robot.gd         # Robot movement & drawing
│   └── world.gd         # Floor grid drawing
└── docs/
    └── superpowers/     # Design docs (optional)
```
