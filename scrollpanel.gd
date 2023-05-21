extends VBoxContainer

var scene = preload("res://panel.tscn")

func _on_button_pressed():
	add_child(scene.instantiate())
