extends Node2D


onready var global = Global
var y_speed = 0


func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	position.y += y_speed


func _on_Area2D_area_entered(area: Area2D) -> void:
	if get_node("Area2D").areaType == area.areaType:
		queue_free()
