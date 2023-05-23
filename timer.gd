extends Timer

@onready var bar = get_node("..")
@onready var flipper = get_node("/root/Control/Unicorn flipper/Label2")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	bar.value = (wait_time - time_left)*bar.max_value/wait_time


func _on_timeout():
	flipper.flip()
