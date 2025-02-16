extends Node2D

var names := ['skyler', 'jesse', 'hank', 'walter']
var current_input := ''
var current_letter := ''
var current_name := ''
var current_name_index := 0

func get_next_name() -> String:
	current_name = names.pop_back()
	update_current_letter()
	var format_name = "[center]{name}[/center]"
	return current_name

func update_current_letter():
	current_letter = current_name[current_name_index].to_upper()
	

func _ready() -> void:
	var person = Person.new()
	add_child(person)
	person.position = Vector2(100, 500)
	# display_name.text = get_next_name().to_upper()

## Get the player's keyboard input
func _unhandled_key_input(event: InputEvent) -> void:
	if event is InputEventKey and not event.is_pressed():
		current_input = event.as_text_keycode()  # uppercase
		# display_name.text = current_input
		
	if current_letter == current_input:
		print('hit')
		current_input = ''
