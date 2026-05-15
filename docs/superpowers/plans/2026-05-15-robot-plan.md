# Robot WASD Controller — Implementation Plan

> **For agentic workers:** Execute inline — this is a 3-file project.

**Goal:** A minimal Godot 4 2D project with a WASD-controlled robot drawn via primitives.

**Architecture:** Single scene (Robot as CharacterBody2D), `_draw()` for visuals, `_physics_process()` for movement. Uses Godot's built-in `ui_*` input actions (WASD + arrow keys).

**Tech Stack:** Godot 4.x, GDScript

---

### Task 1: Create project.godot

**Files:**
- Create: `project.godot`

### Task 2: Create robot script

**Files:**
- Create: `scripts/robot.gd`

### Task 3: Create main scene

**Files:**
- Create: `scenes/robot.tscn`
