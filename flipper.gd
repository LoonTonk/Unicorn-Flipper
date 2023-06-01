extends Panel

@export var prefix: String = "Things: "
@export var prob: float = 0.5
@export var baseCost: int = 5
@export var multiply: bool = false
@onready var cost: int = baseCost
@export var flippers: int = 0
@onready var text: Node = get_node("Label2")
@onready var unicorns: Node = get_node("/root/Control/Unicorn num")
@onready var box: Node = get_node("VScrollBar/VBoxContainer")
@onready var button: Node = get_node("Button")
var timer = preload("res://timer.tscn")
@onready var horseMultiplier: int = get_node("/root/Control/Unicorn num").horseMultiplier

func _on_button_pressed():
	if unicorns.things >= cost:
		unicorns.change_things(-cost)
		flippers += 1
		text.text = prefix + str(prob)
		box.add_child(timer.instantiate())
		cost = baseCost * pow(1.15, flippers)
		button.text = "Cost: " + str(cost) + "\ndead Unicorns"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if unicorns.things == baseCost:
		visible = true

func flip(multiplier: int = 1) -> bool:
		if randf() < prob:
			unicorns.change_things(horseMultiplier * multiplier)
			return true
		else:
			return false
