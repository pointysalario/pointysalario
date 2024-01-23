tool
extends "res://addons/Popochiu/Engine/Interfaces/IRoom.gd"

# classes ----
const PRBondi110 := preload('res://popochiu/Rooms/Bondi110/RoomBondi110.gd')
const PRBuda := preload('res://popochiu/Rooms/Buda/RoomBuda.gd')
#const PRRio := preload('res://popochiu/Rooms/Rio/RoomRio.gd')
const PREntrada := preload('res://popochiu/Rooms/Entrada/RoomEntrada.gd')
const PRCasas1 := preload('res://popochiu/Rooms/Casas1/RoomCasas1.gd')
# ---- classes

# nodes ----
var Bondi110: PRBondi110 setget , get_Bondi110
var Buda: PRBuda setget , get_Buda
#var Rio: PRRio setget , get_Rio
var Entrada: PREntrada setget , get_Entrada
var Casas1: PRCasas1 setget , get_Casas1
# ---- nodes

# functions ----
func get_Bondi110(): return .get_runtime_room('Bondi110')
func get_Buda(): return .get_runtime_room('Buda')
#func get_Rio(): return .get_runtime_room('Rio')
func get_Entrada(): return .get_runtime_room('Entrada')
func get_Casas1(): return .get_runtime_room('Casas1')
# ---- functions

