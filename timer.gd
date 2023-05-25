extends Timer

@onready var bar = get_node("..")
@onready var flipper = get_node("../../../../Label2")
@onready var mult = get_node("../M")

var success = StyleBoxFlat.new()
var failure = StyleBoxFlat.new()
var default = StyleBoxFlat.new()
func _ready():
	success.set_bg_color(Color(0,0.5,0,1))
	failure.set_bg_color(Color(0.5,0,0,1))
	default.set_bg_color(Color(0,0,0,0.5))
	if flipper.multiplier > 0:
		mult.visible = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	bar.value = (wait_time - time_left)*bar.max_value/wait_time
	var color = StyleBoxFlat.new()
	color.set_bg_color(bar.get("theme_override_styles/background").get_bg_color().lerp(default.get_bg_color(), delta))
	bar.set("theme_override_styles/background", color)


func _on_timeout():
	if flipper.flip():
		bar.set("theme_override_styles/background", success)
	else:
		bar.set("theme_override_styles/background", failure)
	mult.text = "x" + str(flipper.multiplier)
