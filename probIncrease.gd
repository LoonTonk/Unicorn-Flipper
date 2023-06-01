extends Label

@export var prefix: String = "Probability "
@export var baseCost: int = 5
@onready var cost: int = baseCost
@export var probIncrease: int = 0
@onready var unicorns: Node = get_node("/root/Control/Unicorn num")
@onready var button: Node = get_node("../Button")
var timer = preload("res://timer.tscn")
@onready var horseMultiplier: int = get_node("/root/Control/Unicorn num").horseMultiplier

func _on_button_pressed():
	if unicorns.things >= cost:
		unicorns.change_things(-cost)
		probIncrease += 2
		text = prefix + str(probIncrease)
		cost = baseCost * pow(1.15, probIncrease)
		button.text = "Cost: " + str(cost)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if unicorns.things == baseCost:
		owner.visible = true
