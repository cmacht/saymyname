extends Node2D

var names := ['skyler', 'jesse', 'hank', 'walter']
var current_index = 0

var current_input := ''
var current_letter := ''
var current_name := ''
var current_name_index := 0


func _ready() -> void:
	spawn_next_person()
	
func _on_person_exited():
	spawn_next_person()

func spawn_next_person():
	if current_index < names.size():
		var name = names[current_index]
		var person = Person.new_person(name)
		add_child(person)
		person.connect("screen_exited", _on_person_exited)
		current_index += 1
	else:
		get_tree().quit()




func update_current_letter():
	current_letter = current_name[current_name_index].to_upper()

## Get the player's keyboard input
func _unhandled_key_input(event: InputEvent) -> void:
	if event is InputEventKey and not event.is_pressed():
		current_input = event.as_text_keycode()  # uppercase
		# display_name.text = current_input
		
	if current_letter == current_input:
		print('hit')
		current_input = ''
