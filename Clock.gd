extends Sprite2D

@onready var minute_hand : Sprite2D = $MinuteHand
@onready var hour_hand : Sprite2D = $HourHand

func _process(_delta):
	var systemtime = Time.get_time_dict_from_system()
	hour_hand.rotation_degrees = (systemtime.hour as float + (systemtime.minute as float / 60)) / 12 * 360
	minute_hand.rotation_degrees = systemtime.minute as float / 60 * 360