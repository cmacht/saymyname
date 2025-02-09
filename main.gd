extends Node2D

@onready var display_name := get_node("Name")
var students := ['walter', 'skyler', 'jesse', 'hank']
var current_input := ''
var current_letter := ''
var current_name := ''
var current_name_index := 0


func get_next_name() -> String:
	current_name = students.pop_back()
	update_current_letter()
	var format_name = "[center]{name}[/center]"
	return current_name

func update_current_letter():
	current_letter = current_name[current_name_index].to_upper()
	
func _ready() -> void:
	display_name.text = get_next_name().to_upper()
	
func _unhandled_key_input(event: InputEvent) -> void:
	if event is InputEventKey and not event.is_pressed():
		current_input = event.as_text_keycode()
		display_name.text = current_input
		
	if current_letter == current_input:
		print('hit')
		current_input = ''

func _process(delta: float) -> void:
	pass
		
