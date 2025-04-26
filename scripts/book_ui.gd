extends Control

var info = GameData.manual_dict

@onready var label: Label = $HBoxContainer/Label

@onready var button_holder: VBoxContainer = $HBoxContainer/ButtonHolder

func _ready() -> void:
	for key in info.keys():
		add_button(key)

func open_book():
	visible = true

func close_book():
	visible = false

func _on_button_pressed() -> void:
	close_book()

func add_button(text):
	var button = Button.new()  
	button.text = text    
	button.pressed.connect(button_pressed.bind(info[text]))
	button_holder.add_child(button)

func button_pressed(data):
	label.text = data
