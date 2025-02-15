extends Node2D

var names := ['walter', 'skyler', 'jesse', 'hank']
var current_input := ''
var current_letter := ''
var current_name := ''
var current_name_index := 0
var person_scene = preload("res://scenes/person.tscn")
var person := person_scene.instantiate()

func get_next_name() -> String:
	current_name = names.pop_back()
	update_current_letter()
	var format_name = "[center]{name}[/center]"
	return current_name

func update_current_letter():
	current_letter = current_name[current_name_index].to_upper()
	
func create_person():
	add_child(person)
	person.position = Vector2(85.0, 520.0)
	var label_name = RichTextLabel.new()
	label_name.text = 'hello world'
	label_name.size = Vector2(100, 40)
	label_name.position = Vector2(-40, -180)
	person.add_child(label_name)
	
func _ready() -> void:
	create_person()
	# display_name.text = get_next_name().to_upper()

## Get the player's keyboard input
func _unhandled_key_input(event: InputEvent) -> void:
	if event is InputEventKey and not event.is_pressed():
		current_input = event.as_text_keycode()  # uppercase
		# display_name.text = current_input
		
	if current_letter == current_input:
		print('hit')
		current_input = ''
