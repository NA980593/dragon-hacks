extends Control

func open_book():
	visible = true

func close_book():
	visible = false

func _on_button_pressed() -> void:
	close_book()
