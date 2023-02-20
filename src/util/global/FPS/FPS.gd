extends Node
export var FPS := 0

func _ready() -> void:
	if FPS>0:
		Engine.target_fps = FPS
