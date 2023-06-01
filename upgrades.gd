extends Panel

@export var prefix: String = "Probability "
@export var baseCost: int = 5
@onready var cost: int = baseCost
@export var probIncreasers: int = 0
@onready var unicorns: Node = get_node("/root/Control/Unicorn num")
@onready var button: Node = get_node("../Button")
@onready var text: Node = get_node("../Label2")
var timer = preload("res://timer.tscn")
@onready var horseMultiplier: int = get_node("/root/Control/Unicorn num").horseMultiplier

func _on_button_pressed():
	if unicorns.things >= cost:
		unicorns.change_things(-cost)
		probIncreasers += 1
		label.text = prefix + str(probIncreasers)
		cost = baseCost * pow(2, probIncreasers)
		button.text = "Cost: " + str(cost) + "\ndead Unicorns"
		visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if unicorns.things >= cost/2:
		visible = true
