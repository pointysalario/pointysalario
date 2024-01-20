tool
extends "res://addons/Popochiu/Engine/Interfaces/ICharacter.gd"

# classes ----
const PCPlayer := preload('res://popochiu/Characters/Player/CharacterPlayer.gd')
const PCRamonAyala := preload('res://popochiu/Characters/RamonAyala/CharacterRamonAyala.gd')
const PCCriptoevangelista := preload('res://popochiu/Characters/Criptoevangelista/CharacterCriptoevangelista.gd')
# ---- classes

# nodes ----
var Player: PCPlayer setget , get_Player
var RamonAyala: PCRamonAyala setget , get_RamonAyala
var Criptoevangelista: PCCriptoevangelista setget , get_Criptoevangelista
# ---- nodes

# functions ----
func get_Player(): return .get_runtime_character('Player')
func get_RamonAyala(): return .get_runtime_character('RamonAyala')
func get_Criptoevangelista(): return .get_runtime_character('Criptoevangelista')
# ---- functions

