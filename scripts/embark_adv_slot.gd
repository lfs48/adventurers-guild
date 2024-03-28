class_name EmbarkAdvSlot

extends TextureRect

func _can_drop_data(_pos, data:Variant) -> bool:
	return data is Adventurer
	
func _drop_data(_pos, data:Variant) -> void:
	if data is Adventurer:
		texture = data.icon
