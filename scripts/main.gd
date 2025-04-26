extends Node

func next_patient():
	print("next patient")

func open_book():
	print("open book")


func _on_book_open_book() -> void:
	open_book()


func _on_next_patient_button_next_patient() -> void:
	next_patient()
