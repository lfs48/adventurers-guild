class_name Skill
extends Resource

enum Tags {
	FIRE,
	SHOCK,
	MULTI_TARGET,
	SINGLE_TARGET,
	HEALING,
	HOLY,
	STEALTH
}

@export var name: String = "Skill Name"
@export_multiline var description: String = "Skill Description"
@export var icon: Texture2D
@export var tags: Array[Tags] = []
