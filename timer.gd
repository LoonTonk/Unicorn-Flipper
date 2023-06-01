extends Timer

@onready var bar = get_node("..")
@onready var flipper = get_node("/")
@onready var mult = get_node("../M")
var multiplier: int = 1

var success = StyleBoxFlat.new()
var failure = StyleBoxFlat.new()
var default = StyleBoxFlat.new()
func _ready():
	success.set_bg_color(Color(0,0.5,0,1))
	failure.set_bg_color(Color(0.5,0,0,1))
	default.set_bg_color(Color(0,0,0,0.5))
	if flipper.multiply:
		mult.visible = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	bar.value = (wait_time - time_left)*bar.max_value/wait_time
	var color = StyleBoxFlat.new()
	color.set_bg_color(bar.get("theme_override_styles/background").get_bg_color().lerp(default.get_bg_color(), delta))
	bar.set("theme_override_styles/background", color)


func _on_timeout():
	if flipper.flip(multiplier):
		bar.set("theme_override_styles/background", success)
		if flipper.multiply:
			multiplier += 1
	else:
		bar.set("theme_override_styles/background", failure)
		multiplier = 1
	mult.text = "x" + str(multiplier)
