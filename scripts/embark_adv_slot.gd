class_name EmbarkAdvSlot
extends TextureRect

var adv:Adventurer

func _get_drag_data(at_position: Vector2) -> Variant:
	if adv != null:
		var temp_adv = adv
		var preview = adv.create_drag_preview_control()
		set_drag_preview(preview)
		clear_adv()
		return temp_adv
	else:
		return null


func _can_drop_data(_pos, data:Variant) -> bool:
	return data is Adventurer


func _drop_data(_pos, data:Variant) -> void:
	receive_adv(data)


func receive_adv(adv:Adventurer) -> void:
	self.adv = adv
	texture = adv.icon
	Events.adventurer_occupied.emit(adv.adv_id)


func clear_adv() -> void:
	if adv != null:
		Events.adventurer_unoccupied.emit(adv.adv_id)
		adv = null
		texture = null
