extends Node2D


func _ready() -> void:
	pass # Replace with function body.


func move(target):
	var move_tween = get_node("move_tween")
	move_tween.interpolate_property(self, "position", position, target, 2, Tween.TRANS_QUINT, Tween.EASE_OUT)
	move_tween.start()
