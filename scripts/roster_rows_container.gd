extends VBoxContainer

const RosterRow = preload("res://scenes/roster_row.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Events.connect("adventurer_added", _create_adventurer_row)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _create_adventurer_row(adventurer:Adventurer) -> void:
	var row = RosterRow.instantiate()
	row.set_adventurer(adventurer)
	add_child(row)
