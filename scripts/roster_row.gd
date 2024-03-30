extends Container

var adv:Adventurer
var occupied := false

func _ready() -> void:
	Events.adventurer_occupied.connect(_handle_adventurer_occupied)
	Events.adventurer_unoccupied.connect(_handle_adventurer_unoccupied)

func set_adventurer(adventurer:Adventurer):
	adv = adventurer
	set_text()


func set_text() -> void:
	%AdventurerName.text = adv.adv_name
	var info = "Level " + str(adv.level) + " " + adv.race + " " + adv.adv_class
	%AdventurerInfo.text = info


func _get_drag_data(at_position: Vector2) -> Variant:
	if not occupied:
		var preview = adv.create_drag_preview_control()
		set_drag_preview(preview)
		return adv
	else:
		return null


func _handle_adventurer_occupied(id:int) -> void:
	if id == adv.adv_id:
		occupy()


func _handle_adventurer_unoccupied(id:int) -> void:
	if id == adv.adv_id:
		unoccupy()


func occupy()-> void:
	occupied = true
	$OccupiedPanel.visible = true


func unoccupy()-> void:
	occupied = false
	$OccupiedPanel.visible = false
