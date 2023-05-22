extends Label

@export var prefix: String = "Things: "
@export var things: int = 0
@export var prob: float = 0.5
var rand=RandomNumberGenerator.new()

func _on_button_pressed():
	if randf() <prob:
		things += 1
	text = prefix + str(things)
