class_name Challenge
extends Resource

@export var name: String = "Challenge Name"
@export_multiline var description: String = "Challenge Description"
@export var icon: Texture2D
@export var rating: int = 1
@export var tags: Array[Skill.Tags] = []
