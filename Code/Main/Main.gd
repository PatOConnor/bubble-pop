extends Node
class_name Main
@onready var timer: Timer = $Timer
@onready var ui: UI = $UI
@onready var audio: AudioStreamPlayer2D = $Audio


const BUBBLE = preload("uid://lxljfgfynsd")


func _ready() -> void:
	timer.timeout.connect(spawn_bubble)
	
func spawn_bubble():
	var new_bubble:Bubble = BUBBLE.instantiate()
	new_bubble.main = self
	new_bubble.position.x = randi_range(0,get_viewport().size.x)
	new_bubble.position.y = get_viewport().size.y
	add_child(new_bubble)
	
