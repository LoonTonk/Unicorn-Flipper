extends Label

@export var prefix: String = "Things: "
@export var prob: float = 0.5
@export var baseCost: int = 5
@export var multiplier: int = -1
@onready var cost: int = baseCost
@export var flippers: int = 0
@onready var unicorns: Node = get_node("/root/Control/Unicorn num")
@onready var box: Node = get_node("../VScrollBar/VBoxContainer")
@onready var button: Node = get_node("../Button")
var timer = preload("res://timer.tscn")
@onready var horseMultiplier: int = get_node("/root/Control/Unicorn num").horseMultiplier

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
		if randf() < prob:
			if multiplier == -1:
				unicorns.change_things(horseMultiplier)
			else:
				unicorns.change_things(horseMultiplier * multiplier)
				multiplier += 1
			return true
		else:
			if multiplier > 1:
				multiplier = 1
			return false
