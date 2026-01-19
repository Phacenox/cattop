extends Node2D



func _on_area_2d_input_event(_viewport:Node, event:InputEvent, _shape_idx:int):
	if event is InputEventMouseButton:
		on_mouse_click()
		print(event)

var toggle = false
func on_mouse_click():
	modulate = Color.BLUE if toggle else Color.GREEN
	toggle = !toggle
