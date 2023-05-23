extends VBoxContainer

var scene = preload("res://timer.tscn")

func _on_button_pressed():
	add_child(scene.instantiate())
