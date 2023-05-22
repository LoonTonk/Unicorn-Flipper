extends Label

@export var prefix: String = "Things: "
@export var things: int = 0
@export var prob: float = 0.5
@export var cost: int = 5
@export var flippers: int = 0
var rand=RandomNumberGenerator.new()

func _on_button_pressed():
	if things >= cost:
		things -= cost

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):


func _on_timer_timeout():
	if randf() < prob:
		things += 1
	text = prefix + str(things)lace with function body.
