extends Node

var window_rect := Rect2()
var full_creen_detection := false

@export
var shapes : Array[CollisionPolygon2D]


func _ready():
	get_window().always_on_top = true

func _process(_delta):
	var points = []
	for s in shapes:
		for point in s.polygon:
			points.append(point + s.global_position)
		points.append(s.polygon[0] + s.global_position)
		points.append(Vector2())
	get_window().mouse_passthrough_polygon = PackedVector2Array(points)



#func _process(_delta):
#    get_window().mouse_passthrough = true
