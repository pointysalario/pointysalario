tool
extends "res://addons/Popochiu/Engine/Interfaces/IInventory.gd"

# classes ----
const PIIEspejaime := preload('res://popochiu/InventoryItems/Espejaime/InventoryEspejaime.gd')
# ---- classes

# nodes ----
var Espejaime: PIIEspejaime setget , get_Espejaime
# ---- nodes

# functions ----
func get_Espejaime(): return ._get_item_instance('Espejaime')
# ---- functions

