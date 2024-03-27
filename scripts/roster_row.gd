extends MarginContainer

func set_adventurer(adventurer:Adventurer):
	$HBoxContainer/VBoxContainer/AdventurerName.text = adventurer.adv_name
	var info = "Level " + str(adventurer.level) + " " + adventurer.race + " " + adventurer.adv_class
	$HBoxContainer/VBoxContainer/AdventurerInfo.text = info
