extends Path2D

@onready var pathfollow = $PathFollow2D
@onready var enemy = $PathFollow2D/enemy

func _ready():
	pathfollow.set_progress_ratio(1)

func _process(delta: float) -> void:
	pathfollow.progress_ratio -= 0.25 * delta
	if pathfollow.progress_ratio <= 0:
		queue_free()
