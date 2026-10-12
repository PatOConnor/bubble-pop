extends Area2D
class_name Bubble

@export var main:Main #this gets set when it gets spawned
@export var speed:int = 60 #pixels per second

func _ready() -> void:
	input_event.connect(on_clicked)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y -= speed * delta
	if position.y < 0:
		pop()

func on_clicked(viewport, event, shape):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				main.ui.update_score(1)
				pop()

func pop():
	main.audio.position = position
	main.audio.pitch_scale = randf_range(0.8,1.2)
	main.audio.play()
	queue_free()
