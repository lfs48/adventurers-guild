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
	
	var preview_texture = TextureRect.new()
	preview_texture.texture = adv.icon
	preview_texture.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	preview_texture.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	preview_texture.size = Vector2(48,48)
	preview_texture.position = Vector2(-24,-24)
	
	var preview = Control.new()
	preview.add_child(preview_texture)
	set_drag_preview(preview)
	
	return adv
