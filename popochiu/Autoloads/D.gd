tool
extends "res://addons/Popochiu/Engine/Interfaces/IDialog.gd"

# classes ----
const PDCharlaconRamon := preload('res://popochiu/Dialogs/CharlaconRamon/DialogCharlaconRamon.gd')
# ---- classes

# nodes ----
var CharlaconRamon: PDCharlaconRamon setget , get_CharlaconRamon
# ---- nodes

# functions ----
func get_CharlaconRamon(): return E.get_dialog('CharlaconRamon')
# ---- functions

