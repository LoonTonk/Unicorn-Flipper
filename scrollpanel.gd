extends VBoxContainer

var scene = preload("res://unicorn flipper.tscn")

func _on_button_pressed():
	add_child(scene.instantiate())
