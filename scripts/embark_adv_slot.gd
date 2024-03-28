class_name EmbarkAdvSlot

extends TextureRect


func _can_drop_data(_pos, data:Variant) -> bool:
	return is_valid_drop_data(data)


func _drop_data(_pos, data:Variant) -> void:
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
