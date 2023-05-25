extends Label

@export var prefix: String = "Things: "
@export var prob: float = 0.5
@export var baseCost: int = 10
var cost: int = baseCost
@export var multiplier: int = 1
@export var flippers: int = 0
@onready var unicorns: Node = get_node("/root/Control/Unicorn num")
@onready var box: Node = get_node("../VScrollBar/VBoxContainer")
@onready var button: Node = get_node("../Button")
var timer = preload("res://timer.tscn")

func _on_button_pressed():
	if unicorns.things >= cost:
		unicorns.change_things(-cost)
		flippers += 1
		text = prefix + str(flippers)
		box.add_child(timer.instantiate())
		cost = baseCost * pow(1.15, flippers)
		button.text = "Cost: " + str(cost)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if unicorns.things == baseCost:
		owner.visible = true

func flip() -> bool:
	#for i in range(flippers):
	if randf() < prob:
		unicorns.change_things(1 * multiplier)
		return true
	else:
		return false
