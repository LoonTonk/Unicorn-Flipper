extends Timer

@onready var bar = get_node("..")
@onready var flipper = get_node("/root/Control/Unicorn flipper/Label2")
@onready var color_timer = get_node("color flash")

var my_style = StyleBoxFlat.new()
var other_style = StyleBoxFlat.new()
func _ready():
	my_style.set_bg_color(Color(0,0,1,1))
	other_style.set_bg_color(Color(1,1,0,1))
	# Set the "normal" style to be your newly created style.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	bar.value = (wait_time - time_left)*bar.max_value/wait_time


func _on_timeout():
	if flipper.flip():
		bar.set("custom_styles/normal", my_style)
	else:
		bar.set("custom_styles/normal", other_style)
