# Robot WASD 控制器 —— 实现计划

> **供自动化工作使用：** 直接执行 —— 只有 3 个文件的项目。

**目标：** 一个最小的 Godot 4 2D 项目，用图元绘制机器人，WASD 控制移动。

**架构：** 单场景（Robot 为 CharacterBody2D），`_draw()` 负责视觉，`_physics_process()` 负责移动。使用 Godot 内置的 `ui_*` 输入动作（WASD + 方向键）。

**技术栈：** Godot 4.x，GDScript

---

### 任务 1: 创建 project.godot

**文件：**
- 创建：`project.godot`

### 任务 2: 创建机器人脚本

**文件：**
- 创建：`scripts/robot.gd`

### 任务 3: 创建主场景

**文件：**
- 创建：`scenes/robot.tscn`
