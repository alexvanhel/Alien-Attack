extends Area2D

@export var speed = 1200 # pixels per second

@onready var visible_notifier = $VisibleNotifier

func _ready() -> void:
	visible_notifier.connect("screen_exited", _on_screen_exited)
	
func _physics_process(delta: float) -> void:
	global_position.x += speed * delta # turns px*frame/s into px/s
	
# delta is the total time between last processed frame and the current

func _on_screen_exited():
	queue_free()


func _on_area_entered(area: Area2D) -> void:
	queue_free()
	area.die()
