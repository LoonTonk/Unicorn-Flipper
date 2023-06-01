extends Panel

@export var prefix: String = "Probability: "
@export var baseCost: int = 5
@onready var cost: int = baseCost
@export var count: int = 0
@onready var unicorns: Node = get_node("/root/Control/Unicorn num")
@onready var flipper1 : Node = get_node("/root/Control/Unicorn flipper")
@onready var flipper2 : Node = get_node("/root/Control/Unicorn flipper V2")
@onready var button: Node = get_node("Button")
enum type {PROB1, PROB2, MULTV1, INSUR, MULTV2, MULTC}
@export var upgradeType: type = type.PROB1
var timer = preload("res://timer.tscn")

func _on_button_pressed():
	if unicorns.things >= cost:
		unicorns.change_things(-cost)
		count += 1
		cost = baseCost * pow(2, count)
		button.text = "Cost: " + str(cost) + "\ndead Unicorns"
		match upgradeType:
			type.PROB1:
				flipper1.prob += 0.02
			type.PROB2:
				flipper2.prob += 0.02
			type.MULTV1:
				flipper1.flipMultiplier += 1
			type.MULTV2:
				flipper2.flipMultiplier += 1
			type.INSUR:
				pass
			type.MULTC:
				unicorns.clickMultiplier += 1
		visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if unicorns.things >= cost/2:
		visible = true
