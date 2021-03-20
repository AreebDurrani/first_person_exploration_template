extends Area

export(String, MULTILINE) var message = "sample text"
var tween_time = 0.25

var tween
var label

func _ready():
	tween = $tween
	label = $label
	label.modulate = Color(0.0, 0.0, 0.0, 0.0)

func _body_entered(var body):
	if body.is_in_group("player"):
		_show_text()

func _body_exited(var body):
	if body.is_in_group("player"):
		_hide_text()

func _hide_text():
	tween.interpolate_property(label, "modulate",
	label.modulate, Color(0.0, 0.0, 0.0, 0.0), tween_time,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()

func _show_text():
	tween.interpolate_property(label, "modulate",
	label.modulate, Color.white, tween_time,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()
