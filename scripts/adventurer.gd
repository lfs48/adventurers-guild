class_name Adventurer

extends Node

@export var adv_name: String
@export var adv_class: String
@export var level: int
@export var race: String
@export var icon: Texture2D

var names = ["Alice", "Bob", "Clark", "Dan"]
var classes = ["Fighter", "Rogue", "Cleric", "Wizard"]
var races = ["Human", "Elf", "Dwarf", "Orc"]
var default_icon = preload("res://icon.svg")

func _init() -> void:
	adv_name = names.pick_random()
	adv_class = classes.pick_random()
	race = races.pick_random()
	level = 1
	icon = default_icon

func recruit_adventurer(name:String) -> void:
	var adv = {
		"adv_name": adv_name,
		"adv_class": adv_class,
		"level": level,
		"race": race
	}
