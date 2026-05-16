# Robot WASD 控制器 —— 设计规格

## 目标

一个最小的 Godot 4 项目：2D 俯视角机器人，用 WASD 键移动。无需外部资源 —— 所有视觉都用 Godot 图元绘制。

## 架构

- **引擎**：Godot 4.x
- **维度**：2D 俯视角
- **场景树**：`Root → World (Node2D) → Robot (CharacterBody2D) → Body (ColorRect) + Direction (Polygon2D) + CollisionShape2D`

## 文件

| 文件 | 用途 |
|------|------|
| `project.godot` | Godot 项目配置（renderer=2D, entry=robot.tscn）|
| `scenes/robot.tscn` | 主场景 —— 世界根节点 + 机器人 |
| `scripts/robot.gd` | 机器人移动脚本（继承 CharacterBody2D）|

## 机器人外观

- **身体**：64×64 蓝色 ColorRect，居中
- **方向指示器**：红色小三角（Polygon2D）指向前方
- **碰撞**：RectangleShape2D，匹配身体大小

## 移动

- `W/A/S/D` 映射到 `Vector2(0,-1) / Vector2(-1,0) / Vector2(0,1) / Vector2(1,0)`
- 斜向输入归一化以保持速度一致（例如 W+A → Vector2(-1,-1).normalized()）
- `move_and_slide()` 实现碰撞感知移动
- 速度：300 像素/秒
- `_physics_process(delta)` 实现帧率无关的移动

## 成功标准

- [ ] WASD 控制机器人 8 方向移动
- [ ] 机器人面向移动方向（三角旋转）
- [ ] 斜向移动与正方向速度一致
- [ ] 摄像头跟随机器人
- [ ] 在 Godot 中按 F5 运行场景
