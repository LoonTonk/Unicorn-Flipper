extends Label

@export var prefix: String = "Things: "
@export var things: int = 0

func _on_button_pressed():
	things += 1
	text = prefix + str(things)
