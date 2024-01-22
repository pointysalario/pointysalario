tool
extends "res://addons/Popochiu/Engine/Interfaces/IRoom.gd"

# classes ----
const PRBondi110 := preload('res://popochiu/Rooms/Bondi110/RoomBondi110.gd')
const PRBuda := preload('res://popochiu/Rooms/Buda/RoomBuda.gd')
## ---- classes

# nodes ----
var Bondi110: PRBondi110 setget , get_Bondi110
var Buda: PRBuda setget , get_Buda
## ---- nodes

# functions ----
func get_Bondi110(): return .get_runtime_room('Bondi110')
func get_Buda(): return .get_runtime_room('Buda')
## ---- functions

