extends Node2D
class_name Bubble

@export var speed:int = 60 #pixels per second

func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y -= speed * delta
	if position.y < 0:
		pop()

func onclick():pass

func pop():
	#play sfx
	queue_free()
