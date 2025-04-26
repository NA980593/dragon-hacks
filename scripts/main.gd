extends Node

@onready var patient_holder: Node2D = $PatientHolder

@onready var book_ui: Control = $BookUI

@onready var animation_player: AnimationPlayer = $AnimationPlayer

var patient = preload("res://scenes/patient.tscn")

func next_patient():
	spawn_patient()

func open_book():
	book_ui.open_book()

func spawn_patient():
	var p = patient.instantiate()
	patient_holder.add_child(p)
	animation_player.play("patient_walk")

func _on_book_open_book() -> void:
	open_book()


func _on_next_patient_button_next_patient() -> void:
	next_patient()
