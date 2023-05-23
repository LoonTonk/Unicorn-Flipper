extends Timer

@onready var bar = get_node("..")
@onready var flipper = get_node("/root/Control/Unicorn flipper/Label2")
@onready var color_timer = get_node("color flash")

var success = StyleBoxFlat.new()
var failure = StyleBoxFlat.new()
var default = StyleBoxFlat.new()
func _ready():
	success.set_bg_color(Color(0,0.5,0,1))
	failure.set_bg_color(Color(0.5,0,0,1))
	default.set_bg_color(Color(0,0,0,0.5))
	# Set the "normal" style to be your newly created style.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	bar.value = (wait_time - time_left)*bar.max_value/wait_time


func _on_timeout():
	if flipper.flip():
		bar.set("theme_override_styles/background", success)
	else:
		bar.set("theme_override_styles/background", failure)
	color_timer.start()


func _on_color_flash_timeout():
	bar.set("theme_override_styles/background", default)
