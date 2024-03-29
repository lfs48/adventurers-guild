class_name EmbarkAdvSlot
extends TextureRect

var adv:Adventurer

func _get_drag_data(at_position: Vector2) -> Variant:
	if adv != null:
		var preview = adv.create_drag_preview_control()
		set_drag_preview(preview)
		
		var res = {
			"adv": adv,
			"callback": end_drag
		}
		return res
	else:
		return null


func end_drag() -> void:
	adv = null
	texture = null


func _can_drop_data(_pos, data:Variant) -> bool:
	return is_valid_drop_data(data)


func _drop_data(_pos, data:Variant) -> void:
	adv = data.adv
	texture = data.adv.icon
	data.callback.call()


func is_valid_drop_data(data:Variant) -> bool:
	if data is Dictionary:
		return (
			data.has_all(["adv", "callback"]) 
			and data.adv is Adventurer 
			and data.callback is Callable
		)
	else:
		return false
