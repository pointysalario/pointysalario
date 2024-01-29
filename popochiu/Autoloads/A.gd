tool
extends "res://addons/Popochiu/Engine/Interfaces/IAudio.gd"

# classes ----
const AudioCueSound := preload("res://addons/Popochiu/Engine/AudioManager/AudioCueSound.gd")
const AudioCueMusic := preload("res://addons/Popochiu/Engine/AudioManager/AudioCueMusic.gd")
# ---- classes

# cues ----
var mx_chicharras_pajaros_autos: AudioCueMusic = preload("res://popochiu/Rooms/Bondi110/musica/MxChicharrasPajarosAutos.tres")
var mx_Ramon_Ayala: AudioCueMusic = preload("res://popochiu/Rooms/Main/Musica/MxRamonAyala.tres")
var mx_ramon_ayala: AudioCueMusic = preload("res://popochiu/Rooms/Main/Musica/MxRamonAyala.tres")
var mx_menu_music: AudioCueMusic = preload("res://popochiu/Rooms/Main/Musica/MxMenuMusic.tres")
var sfx_craftear_item: AudioCueSound = preload("res://popochiu/InventoryItems/AnuncioMamonMusk/SfxCraftearItem.tres")
var sfx_rayos: AudioCueSound = preload("res://popochiu/Rooms/Casas1/SfxRayos.tres")
# ---- cues

