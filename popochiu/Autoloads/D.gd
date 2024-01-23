tool
extends "res://addons/Popochiu/Engine/Interfaces/IDialog.gd"

# classes ----
const PDCharlaconRamon := preload('res://popochiu/Dialogs/CharlaconRamon/DialogCharlaconRamon.gd')
const PDCharlaconcriptoevangelista := preload('res://popochiu/Dialogs/Charlaconcriptoevangelista/DialogCharlaconcriptoevangelista.gd')
# ---- classes

# nodes ----
var CharlaconRamon: PDCharlaconRamon setget , get_CharlaconRamon
var Charlaconcriptoevangelista: PDCharlaconcriptoevangelista setget , get_Charlaconcriptoevangelista
# ---- nodes

# functions ----
func get_CharlaconRamon(): return E.get_dialog('CharlaconRamon')
func get_Charlaconcriptoevangelista(): return E.get_dialog('Charlaconcriptoevangelista')
# ---- functions

