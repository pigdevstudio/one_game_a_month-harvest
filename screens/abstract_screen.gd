extends Control

enum events {EVENT_1, EVENT_2, EVENT_3}

func _ready():
	randomize()
	var t = get_node("Timer")
	t.start()
	yield(t, "timeout")
	t = get_node("Tween")
	t.interpolate_property(self, "rect/pos", get_pos(), get_pos() + Vector2(1024, 0), 0.5, t.TRANS_BACK, t.EASE_OUT)
	t.start()
	yield(t, "tween_complete")
	_execute_event(randi()%3)

func _execute_event(event):
	pass