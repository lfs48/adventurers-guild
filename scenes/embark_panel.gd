extends PanelContainer

var dungeon:Dungeon
@onready var slots = %SlotRows.get_children()

func _ready() -> void:
	visible = false
	Events.dungeon_clicked.connect(open_embark_panel)


func open_embark_panel(dungeon:Dungeon) -> void:
	visible = true
	self.dungeon = dungeon
	clear_slots()
	set_text()


func clear_slots() -> void:
	for N:EmbarkAdvSlot in %SlotRows.get_children():
		N.clear_adv()


func set_text() -> void:
	$MarginContainer/VBoxContainer/DungeonName.text = dungeon.dgn_name
