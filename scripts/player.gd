extends CharacterBody2D

signal took_damage

var speed = 300

# you can comment the following line and do it inside shoot()
var laser_scene = preload("res://scenes/laser.tscn")

# you can do this instead of doing it inside _ready()
@onready var laser_container = $LaserContainer

@onready var laser_sound = $LaserSound

#var laser_container
#func _ready() -> void:
	#laser_container = get_node("LaserContainer")

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("shoot"):
		shoot()

func _physics_process(delta: float) -> void:
	velocity = Vector2(0, 0)
	if Input.is_action_pressed("move_right"):
		velocity.x = speed
	if Input.is_action_pressed("move_left"):
		velocity.x = -speed
	if Input.is_action_pressed("move_up"):
		velocity.y = -speed
	if Input.is_action_pressed("move_down"):
		velocity.y = speed
		
	move_and_slide()
	
	var screen_size = get_viewport_rect().size
	
	# stopping the player from moving outside the screen
	# first method: the worst method
	
	#if global_position.x < 0:
		#global_position.x = 0
	#if global_position.x > screen_size.x:
		#global_position.x = screen_size.x
	#if global_position.y < 0:
		#global_position.y = 0
	#if global_position.y > screen_size.y:
		#global_position.y = screen_size.y
		
	# second method: a better method
		
	#global_position.x = clampf(global_position.x, 0, screen_size.x)
	#global_position.y = clampf(global_position.y, 0, screen_size.y)
	
	# third method: the best method
	
	global_position = global_position.clamp(Vector2(0, 0), screen_size)


func shoot():
	# var laser_scene = preload("res://scenes/laser.tscn")
	var laser_instance = laser_scene.instantiate()
	laser_container.add_child(laser_instance)
	laser_instance.global_position = global_position
	laser_instance.global_position.x += 75
	laser_sound.play()

func take_damage():
	emit_signal("took_damage")

func die():
	queue_free()
