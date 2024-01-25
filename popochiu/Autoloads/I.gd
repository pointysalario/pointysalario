tool
extends "res://addons/Popochiu/Engine/Interfaces/IInventory.gd"

# classes ----
const PIIEspejaime := preload('res://popochiu/InventoryItems/Espejaime/InventoryEspejaime.gd')
const PIIAnuncioMamonMusk := preload('res://popochiu/InventoryItems/AnuncioMamonMusk/InventoryAnuncioMamonMusk.gd')
const PIITarjetaMamonMusk := preload('res://popochiu/InventoryItems/TarjetaMamonMusk/InventoryTarjetaMamonMusk.gd')
const PII250Pesos := preload('res://popochiu/InventoryItems/250Pesos/Inventory250Pesos.gd')
const PIITarjetaSUBE := preload('res://popochiu/InventoryItems/TarjetaSUBE/InventoryTarjetaSUBE.gd')
const PIIGuantes := preload('res://popochiu/InventoryItems/Guantes/InventoryGuantes.gd')
const PII100pesos := preload('res://popochiu/InventoryItems/100pesos/Inventory100pesos.gd')
const PII350pesos := preload('res://popochiu/InventoryItems/350pesos/Inventory350pesos.gd')
const PIICelular := preload('res://popochiu/InventoryItems/Celular/InventoryCelular.gd')
const PIIBaldecondetergente := preload('res://popochiu/InventoryItems/Baldecondetergente/InventoryBaldecondetergente.gd')
const PIIBaldeconespuma := preload('res://popochiu/InventoryItems/Baldeconespuma/InventoryBaldeconespuma.gd')
# ---- classes

# nodes ----
var Espejaime: PIIEspejaime setget , get_Espejaime
var AnuncioMamonMusk: PIIAnuncioMamonMusk setget , get_AnuncioMamonMusk
var TarjetaMamonMusk: PIITarjetaMamonMusk setget , get_TarjetaMamonMusk
var R250Pesos: PII250Pesos setget , get_250Pesos
var TarjetaSUBE: PIITarjetaSUBE setget , get_TarjetaSUBE
var Guantes: PIIGuantes setget , get_Guantes
var R100pesos: PII100pesos setget , get_100pesos
var R350pesos: PII350pesos setget , get_350pesos
var Celular: PIICelular setget , get_Celular
var Baldecondetergente: PIIBaldecondetergente setget , get_Baldecondetergente
var Baldeconespuma: PIIBaldeconespuma setget , get_Baldeconespuma
# ---- nodes

# functions ----
func get_Espejaime(): return ._get_item_instance('Espejaime')
func get_AnuncioMamonMusk(): return ._get_item_instance('AnuncioMamonMusk')
func get_TarjetaMamonMusk(): return ._get_item_instance('TarjetaMamonMusk')
func get_250Pesos(): return ._get_item_instance('250Pesos')
func get_TarjetaSUBE(): return ._get_item_instance('TarjetaSUBE')
func get_Guantes(): return ._get_item_instance('Guantes')
func get_100pesos(): return ._get_item_instance('100pesos')
func get_350pesos(): return ._get_item_instance('350pesos')
func get_Celular(): return ._get_item_instance('Celular')
func get_Baldecondetergente(): return ._get_item_instance('Baldecondetergente')
func get_Baldeconespuma(): return ._get_item_instance('Baldeconespuma')
# ---- functions

