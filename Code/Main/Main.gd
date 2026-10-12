extends Node
class_name Main
@onready var timer: Timer = $Timer
@onready var ui: UI = $UI

var starting_y = 600

const BUBBLE = preload("uid://lxljfgfynsd")


func _ready() -> void:
	timer.timeout.connect(spawn_bubble)
	
func spawn_bubble():
	var x_pos = randi() % 1920 #random x position
	var y_pos = starting_y
	var new_bubble:Bubble = BUBBLE.instantiate()
	new_bubble.position.x = x_pos
	new_bubble.position.y = y_pos
	add_child(new_bubble)
	
	ui.update_score(1)
