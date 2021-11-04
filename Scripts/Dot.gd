extends Node2D

export (String) var color

onready var move_tween = $Tween
onready var sprite = get_node("Sprite")
var matched = false

func _ready():
	pass
	
func move(target):
	move_tween.interpolate_property(self, "position", position, target, 0.2, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	move_tween.start()
	pass

func dim():
	sprite.modulate = Color(1, 1, 1, 0.5)
