extends Spatial

export var start_scene = "test"

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _play_game():
	fader._fade_start(start_scene)

func _quit_game():
	get_tree().quit()
