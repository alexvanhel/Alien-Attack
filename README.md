# Alien-Attack

My second Godot 4 project, based on the GameDev.tv course.

## About

Alien-Attack is a 2D space shooter I'm developing while learning game development with Godot 4 and following a GameDev.tv course.

This repository documents my progress as I learn game programming, scene management, collision detection, and other game development fundamentals.

The project is a work in progress, and new features and improvements will be added as development continues.

## Current Features

- Player movement and screen boundaries
- Player shooting with laser projectiles
- Enemy spawning and movement
- Path-based enemy movement
- Collision layers and masks for the player, enemies, and lasers
- Collision handling between gameplay objects
- Player damage and a lives system
- Score tracking
- Game-over screen
- Sound effects
- Particle effects for the player's spaceship

## Controls

| Action | Key |
|---|---|
| Move up | `W` / `↑` |
| Move down | `S` / `↓` |
| Move left | `A` / `←` |
| Move right | `D` / `→` |
| Shoot | `Space` |

## Built With

- **Engine:** Godot 4
- **Language:** GDScript
- **Version Control:** Git and GitHub

## Project Structure

```text
alien-attack/
├── assets/
│   ├── audio/
│   ├── font/
│   └── textures/
├── scenes/
│   ├── enemy.tscn
│   ├── enemy_spawner.tscn
│   ├── game.tscn
│   ├── game_over_screen.tscn
│   ├── hud.tscn
│   ├── laser.tscn
│   ├── path_enemy.tscn
│   └── player.tscn
├── scripts/
│   ├── enemy.gd
│   ├── enemy_spawner.gd
│   ├── game.gd
│   ├── game_over_screen.gd
│   ├── hud.gd
│   ├── laser.gd
│   ├── path_enemy.gd
│   └── player.gd
├── icon.svg
└── project.godot
```

## Learning Goals

Through this project, I aim to improve my understanding of:

- GDScript and object-oriented programming
- Nodes, scenes, and signals
- Collision detection and physics layers
- Instantiating and managing scenes
- Enemy behavior and movement patterns
- User interfaces and game-state management
- Audio and particle effects
- Version control with Git

## Status

**In Development**

This project is part of my game development learning journey. Its features, mechanics, and overall polish will evolve as I continue working through the course and experimenting with Godot.

