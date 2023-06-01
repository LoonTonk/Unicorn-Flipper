extends Panel

@export var prefix: String = "Probability: "
@export var baseCost: int = 5
@onready var cost: int = baseCost
@export var count: int = 0
@onready var unicorns: Node = get_node("/root/Control/Unicorn num")
@onready var flipper1 : Node = get_node("/root/Control/Unicorn flipper")
@onready var flipper2 : Node = get_node("/root/Control/Unicorn flipper V2")
@onready var label1: Node = get_node("../../../VBoxContainer/Label")
@onready var label2: Node = get_node("../../../VBoxContainer/Label2")
@onready var label3: Node = get_node("../../../VBoxContainer/Label3")
@onready var label4: Node = get_node("../../../VBoxContainer/Label4")
@onready var label5: Node = get_node("../../../VBoxContainer/Label5")
@onready var label6: Node = get_node("../../../VBoxContainer/Label6")
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
				label1.text = "Current Unicorn Flipper V1 fatality rate: " + str(50+count*2) +"%"
			type.PROB2:
				flipper2.prob += 0.02
				label2.text = "Current Unicorn Flipper V2 fatality rate: " + str(50+count*2) +"%"
			type.MULTV1:
				flipper1.flipMultiplier += 1
				label3.text = "Current Unicorns unalived on Flipper V1 Success: " + str(1+count)
			type.MULTV2:
				flipper2.flipMultiplier += 1
				label4.text = "Current Unicorns unalived on Flipper V2 Success: " + str(1+count)
			type.MULTC:
				unicorns.clickMultiplier += 1
				label5.text = "Current Unicorns unalived on click: " + str(1+count)
			type.INSUR:
				flipper2.insurance += .10			
				label6.text = "Current success boost on flip failure: " + str(10 * count) + "%"
		visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if unicorns.things >= cost/2:
		visible = true
