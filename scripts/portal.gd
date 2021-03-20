extends Area

export var path = "test"

func _body_entered(var body):
	if body.is_in_group("player"):
		body.playable = false
		fader._fade_start(path)
