extends Node

var adventurers = []

signal adventurer_added

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _on_recruit_button_button_down() -> void:
	var id = adventurers.size()
	var new_adventurer = Adventurer.new(id)
	recruit(new_adventurer)

func recruit(adventurer: Adventurer) -> void:
	adventurers.push_back(adventurer)
	Events.adventurer_added.emit(adventurer)
