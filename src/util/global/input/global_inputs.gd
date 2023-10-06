extends Node

func _ready() -> void:
	pause_mode = PAUSE_MODE_PROCESS

func _input(event: InputEvent) -> void:
	if !OS.is_debug_build():
		return
	if event.is_action_pressed("restart"):
		get_tree().paused = false
		get_tree().reload_current_scene()
	if event.is_action_pressed("exit"):
		get_tree().quit()
	if event.is_action_pressed("pause"):
		get_tree().paused = !get_tree().paused
