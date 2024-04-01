class_name Adventurer

extends Node

@export var adv_id: int
@export var adv_name: String
@export var adv_class: String
@export var level: int
@export var race: String
@export var icon: Texture2D
@export var skills: Array[Skill]

var names = ["Alice", "Bob", "Clark", "Dan"]

enum classes {
	FIGHTER,
	ROGUE,
	CLERIC,
	WIZARD
}
enum races {
	HUMAN,
	ELF,
	DWARF,
	ORC
}
var default_icon = preload("res://icon.svg")

func _init(id:int) -> void:
	adv_id = id
	adv_name = names.pick_random()
	adv_class = classes.keys().pick_random()
	race = races.keys().pick_random()
	skills = get_class_skills()
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
		control.z_index = 10
		return control


func get_class_skills() -> Array[Skill]:
	match adv_class:
		classes.FIGHTER:
			return [
				load("res://skills/Warrior_Cleave.tres"),
				load("res://skills/Warrior_Stamina.tres"),
			]
		classes.ROGUE:
			return [
				load("res://skills/Rogue_Backstab.tres"),
				load("res://skills/Rogue_Sneak.tres"),
			]
		classes.CLERIC:
			return [
				load("res://skills/Cleric_Heal.tres"),
				load("res://skills/Cleric_Smite.tres"),
			]
		classes.WIZARD:
			return [
				load("res://skills/Mage_Fireball.tres"),
				load("res://skills/Mage_Lightning.tres"),
			]
	return []
