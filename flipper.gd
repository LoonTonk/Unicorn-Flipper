extends Label

@export var prefix: String = "Things: "
@export var prob: float = 0.5
@export var cost: int = 5
@export var flippers: int = 0
@onready var unicorns: Node = get_node("/root/Control/Unicorn num")
@onready var box: Node = get_node("../VScrollBar/VBoxContainer")
var timer = preload("res://timer.tscn")

func _on_button_pressed():
	if unicorns.things >= cost:
		unicorns.change_things(-cost)
		flippers += 1
		text = prefix + str(flippers)
		box.add_child(timer.instantiate())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if unicorns.things == cost:
		owner.visible = true

func flip():
	#for i in range(flippers):
	if randf() < prob:
		unicorns.change_things(1)
