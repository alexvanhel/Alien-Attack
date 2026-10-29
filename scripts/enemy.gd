extends Area2D

signal died

@export var speed = 180 # pixels per second

func _physics_process(delta: float) -> void:
	global_position.x -= speed * delta

func die():
	emit_signal("died")
	queue_free()

func _on_body_entered(body: Node2D) -> void:
	body.take_damage()
	die()
