tool
extends "res://addons/Popochiu/Engine/Interfaces/IRoom.gd"

# classes ----
const PRBondi110 := preload('res://popochiu/Rooms/Bondi110/RoomBondi110.gd')
const PRBuda := preload('res://popochiu/Rooms/Buda/RoomBuda.gd')
#const PRRio := preload('res://popochiu/Rooms/Rio/RoomRio.gd')
const PREntrada := preload('res://popochiu/Rooms/Entrada/RoomEntrada.gd')
const PRCasas1 := preload('res://popochiu/Rooms/Casas1/RoomCasas1.gd')
const PRRioconbasura := preload('res://popochiu/Rooms/Rioconbasura/RoomRioconbasura.gd')
const PRPuente := preload('res://popochiu/Rooms/Puente/RoomPuente.gd')
const PROnirico := preload('res://popochiu/Rooms/Onirico/RoomOnirico.gd')
# ---- classes

# nodes ----
var Bondi110: PRBondi110 setget , get_Bondi110
var Buda: PRBuda setget , get_Buda
#var Rio: PRRio setget , get_Rio
var Entrada: PREntrada setget , get_Entrada
var Casas1: PRCasas1 setget , get_Casas1
var Rioconbasura: PRRioconbasura setget , get_Rioconbasura
var Puente: PRPuente setget , get_Puente
var Onirico: PROnirico setget , get_Onirico
# ---- nodes

# functions ----
func get_Bondi110(): return .get_runtime_room('Bondi110')
func get_Buda(): return .get_runtime_room('Buda')
#func get_Rio(): return .get_runtime_room('Rio')
func get_Entrada(): return .get_runtime_room('Entrada')
func get_Casas1(): return .get_runtime_room('Casas1')
func get_Rioconbasura(): return .get_runtime_room('Rioconbasura')
func get_Puente(): return .get_runtime_room('Puente')
func get_Onirico(): return .get_runtime_room('Onirico')
# ---- functions

