class_name Person extends Node2D

signal screen_exited
const PERSON_SCENE: PackedScene = preload("res://scenes/person.tscn")

var _name: String

static func new_person(name: String) -> Person:
	var new_person: Person = PERSON_SCENE.instantiate()
	new_person.position = Vector2(-100, 500)
	new_person._name = name
	new_person.get_node('Label').text = name.to_upper()
	return new_person

func format_name() -> void:
	var format_name = "[center]{name}[/center]"

func _process(delta: float) -> void:
	position.x += 500 * delta

func _on_visible_screen_exited() -> void:
	queue_free()
	screen_exited.emit()
