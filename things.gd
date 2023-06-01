extends Label

@export var prefix: String = "Things: "
@export var things: int = 0
@export var clickMultiplier: int = 1
#@export var prob: float = 0.5
#var rand=RandomNumberGenerator.new()

func _on_button_pressed():
	change_things(clickMultiplier)

func change_things(num: int):
	things += num
	text = prefix + str(things)
