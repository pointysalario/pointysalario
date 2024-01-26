tool
extends "res://addons/Popochiu/Engine/Interfaces/ICharacter.gd"

# classes ----
const PCPlayer := preload('res://popochiu/Characters/Player/CharacterPlayer.gd')
const PCRamonAyala := preload('res://popochiu/Characters/RamonAyala/CharacterRamonAyala.gd')
const PCCriptoevangelista := preload('res://popochiu/Characters/Criptoevangelista/CharacterCriptoevangelista.gd')
const PCPeron := preload('res://popochiu/Characters/Peron/CharacterPeron.gd')
const PCMonstruoRodridodeFilippi := preload('res://popochiu/Characters/MonstruoRodridodeFilippi/CharacterMonstruoRodridodeFilippi.gd')
const PCRamonPuerta := preload('res://popochiu/Characters/RamonPuerta/CharacterRamonPuerta.gd')
# ---- classes

# nodes ----
var Player: PCPlayer setget , get_Player
var RamonAyala: PCRamonAyala setget , get_RamonAyala
var Criptoevangelista: PCCriptoevangelista setget , get_Criptoevangelista
var Peron: PCPeron setget , get_Peron
var MonstruoRodridodeFilippi: PCMonstruoRodridodeFilippi setget , get_MonstruoRodridodeFilippi
var RamonPuerta: PCRamonPuerta setget , get_RamonPuerta
# ---- nodes

# functions ----
func get_Player(): return .get_runtime_character('Player')
func get_RamonAyala(): return .get_runtime_character('RamonAyala')
func get_Criptoevangelista(): return .get_runtime_character('Criptoevangelista')
func get_Peron(): return .get_runtime_character('Peron')
func get_MonstruoRodridodeFilippi(): return .get_runtime_character('MonstruoRodridodeFilippi')
func get_RamonPuerta(): return .get_runtime_character('RamonPuerta')
# ---- functions

