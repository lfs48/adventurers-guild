class_name Adventurer

extends Node

@export var adv_name: String
@export var adv_class: String
@export var level: int
@export var race: String

var names = ["Alice", "Bob", "Clark", "Dan"]
var classes = ["Fighter", "Rogue", "Cleric", "Wizard"]
var races = ["Human", "Elf", "Dwarf", "Orc"]

func _init() -> void:
	adv_name = names.pick_random()
	adv_class = classes.pick_random()
	race = races.pick_random()
	level = 1

func recruit_adventurer(name:String) -> void:
	var adv = {
		"adv_name": adv_name,
		"adv_class": adv_class,
		"level": level,
		"race": race
	}
