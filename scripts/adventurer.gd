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


func create_drag_preview_control() -> Control:
		var texture = TextureRect.new()
		texture.texture = icon
		texture.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
		texture.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
		texture.size = Vector2(48,48)
		texture.position = Vector2(-24,-24)
		
		var control = Control.new()
		control.add_child(texture)
		return control
