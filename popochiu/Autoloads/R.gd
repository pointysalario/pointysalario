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
const PRBonditangalanga := preload('res://popochiu/Rooms/Bonditangalanga/RoomBonditangalanga.gd')
const PRTest := preload('res://popochiu/Rooms/Test/RoomTest.gd')
const PRMain := preload('res://popochiu/Rooms/Main/RoomMain.gd')
const PRCreditos := preload('res://popochiu/Rooms/Creditos/RoomCreditos.gd')
const PRFinal := preload('res://popochiu/Rooms/Final/RoomFinal.gd')
const PRSkividela := preload('res://popochiu/Rooms/Skividela/RoomSkividela.gd')
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
var Bonditangalanga: PRBonditangalanga setget , get_Bonditangalanga
var Test: PRTest setget , get_Test
var Main: PRMain setget , get_Main
var Creditos: PRCreditos setget , get_Creditos
var Final: PRFinal setget , get_Final
var Skividela: PRSkividela setget , get_Skividela
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
func get_Bonditangalanga(): return .get_runtime_room('Bonditangalanga')
func get_Test(): return .get_runtime_room('Test')
func get_Main(): return .get_runtime_room('Main')
func get_Creditos(): return .get_runtime_room('Creditos')
func get_Final(): return .get_runtime_room('Final')
func get_Skividela(): return .get_runtime_room('Skividela')
# ---- functions

