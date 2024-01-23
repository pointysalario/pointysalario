tool
extends "res://addons/Popochiu/Engine/Interfaces/IInventory.gd"

# classes ----
const PIIEspejaime := preload('res://popochiu/InventoryItems/Espejaime/InventoryEspejaime.gd')
const PIIAnuncioMamonMusk := preload('res://popochiu/InventoryItems/AnuncioMamonMusk/InventoryAnuncioMamonMusk.gd')
const PIITarjetaSUBE := preload('res://popochiu/InventoryItems/TarjetaSUBE/InventoryTarjetaSUBE.gd')
const PIITarjetaMamonMusk := preload('res://popochiu/InventoryItems/TarjetaMamonMusk/InventoryTarjetaMamonMusk.gd')
const PII250Pesos := preload('res://popochiu/InventoryItems/250Pesos/Inventory250Pesos.gd')
# ---- classes

# nodes ----
var Espejaime: PIIEspejaime setget , get_Espejaime
var AnuncioMamonMusk: PIIAnuncioMamonMusk setget , get_AnuncioMamonMusk
var TarjetaSUBE: PIITarjetaSUBE setget , get_TarjetaSUBE
var TarjetaMamonMusk: PIITarjetaMamonMusk setget , get_TarjetaMamonMusk
var R250Pesos: PII250Pesos setget , get_250Pesos
# ---- nodes

# functions ----
func get_Espejaime(): return ._get_item_instance('Espejaime')
func get_AnuncioMamonMusk(): return ._get_item_instance('AnuncioMamonMusk')
func get_TarjetaSUBE(): return ._get_item_instance('TarjetaSUBE')
func get_TarjetaMamonMusk(): return ._get_item_instance('TarjetaMamonMusk')
func get_250Pesos(): return ._get_item_instance('250Pesos')
# ---- functions

