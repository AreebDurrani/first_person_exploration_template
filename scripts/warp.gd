extends Area

export(NodePath) var target_path

var timer

var player

func _ready():
	timer = $timer

func _body_entered(var body):
	if body.is_in_group("player"):
		player = body
		player.playable = false
		fader._fade_out()
		timer.start()

func _move_player():
	fader._fade_in()
	var target = get_node(target_path)
	player.global_transform = target.global_transform
	player.playable = true
