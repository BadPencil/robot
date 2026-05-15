# Robot WASD

[EN](#english) | [中文](#中文)

---

## English

A minimal Godot 4 2D project with a WASD-controlled robot.

### How to Run

1. Open [Godot 4.x](https://godotengine.org)
2. Import or open `project.godot`
3. Press **F5** to run

### Controls

| Key | Action |
|-----|--------|
| W / ↑ | Move up |
| A / ← | Move left |
| S / ↓ | Move down |
| D / → | Move right |

The robot faces the direction of movement. A red arrow indicates the forward direction.

### Project Structure

```
├── project.godot        Godot project config
├── scenes/robot.tscn    Main scene
├── scripts/
│   ├── robot.gd         Robot movement & drawing
│   └── world.gd         Floor grid drawing
└── docs/
    └── superpowers/     Design docs (optional)
```

---

## 中文

一个基于 Godot 4 的最小化 2D 项目，用 WASD 控制机器人移动。

### 运行方法

1. 打开 [Godot 4.x](https://godotengine.org)
2. 导入或打开 `project.godot`
3. 按 **F5** 运行

### 操作

| 按键 | 动作 |
|------|------|
| W / ↑ | 上移 |
| A / ← | 左移 |
| S / ↓ | 下移 |
| D / → | 右移 |

机器人会自动朝向移动方向，红色三角指示前方。

### 项目结构

```
├── project.godot        Godot 项目配置
├── scenes/robot.tscn    主场景
├── scripts/
│   ├── robot.gd         机器人移动 & 绘图
│   └── world.gd         地板网格绘图
└── docs/
    └── superpowers/     设计文档（可选）
```
