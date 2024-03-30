extends Node

#Adventurer signals
signal adventurer_added(adventurer:Adventurer)
signal adventurer_occupied(id:int)
signal adventurer_unoccupied(id:int)

#Dungeon signals
signal dungeon_clicked(dungeon:Dungeon)
