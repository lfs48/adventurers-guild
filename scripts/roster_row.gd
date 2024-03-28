extends MarginContainer

var adv:Adventurer

func set_adventurer(adventurer:Adventurer):
	adv = adventurer
	set_text()
	
func set_text() -> void:
	$HBoxContainer/VBoxContainer/AdventurerName.text = adv.adv_name
	var info = "Level " + str(adv.level) + " " + adv.race + " " + adv.adv_class
	$HBoxContainer/VBoxContainer/AdventurerInfo.text = info
	
func _get_drag_data(at_position: Vector2) -> Variant:
	return adv
