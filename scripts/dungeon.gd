class_name Dungeon
extends Control

@export var dgn_name := "Dungeon Name"
@export var challenges: Array[Challenge] = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%DungeonButton.connect("pressed", dispatch_button_signal)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func dispatch_button_signal() -> void:
	Events.dungeon_clicked.emit(self)
