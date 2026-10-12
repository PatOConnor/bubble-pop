extends PanelContainer
class_name UI

var score:int = 0
@onready var score_ui: Label = $ScoreUI
@onready var audio: AudioStreamPlayer2D = $"../Audio"

func _ready():
	update_score(0)


func update_score(delta_score):
	score += delta_score
	score_ui.text = str(score)
