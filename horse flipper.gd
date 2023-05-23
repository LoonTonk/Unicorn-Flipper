extends Label

@export var prefix: String = "Things: "
@export var prob: float = 0.5
@export var cost: int = 5
@export var flippers: int = 0
var unicorns: Node

func _on_button_pressed():
	if unicorns.things >= cost:
		unicorns.change_things(-cost)
		flippers += 1
		text = prefix + str(flippers)

# Called when the node enters the scene tree for the first time.
func _ready():
	unicorns = get_node("/root/Control/Unicorn num")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if unicorns.things == cost:
		owner.visible = true

func _on_timer_timeout():
	for i in range(flippers):
		if randf() < prob:
			unicorns.change_things(1)
