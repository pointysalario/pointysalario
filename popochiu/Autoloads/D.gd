tool
extends "res://addons/Popochiu/Engine/Interfaces/IDialog.gd"

# classes ----
const PDCharlaconRamon := preload('res://popochiu/Dialogs/CharlaconRamon/DialogCharlaconRamon.gd')
const PDCharlaconcriptoevangelista := preload('res://popochiu/Dialogs/Charlaconcriptoevangelista/DialogCharlaconcriptoevangelista.gd')
const PDCharlaconperon := preload('res://popochiu/Dialogs/Charlaconperon/DialogCharlaconperon.gd')
const PDCharlaconmonstruo := preload('res://popochiu/Dialogs/Charlaconmonstruo/DialogCharlaconmonstruo.gd')
const PDPresentacionRamonPuerta := preload('res://popochiu/Dialogs/PresentacionRamonPuerta/DialogPresentacionRamonPuerta.gd')
const PDCharlatangalanga := preload('res://popochiu/Dialogs/Charlatangalanga/DialogCharlatangalanga.gd')
# ---- classes

# nodes ----
var CharlaconRamon: PDCharlaconRamon setget , get_CharlaconRamon
var Charlaconcriptoevangelista: PDCharlaconcriptoevangelista setget , get_Charlaconcriptoevangelista
var Charlaconperon: PDCharlaconperon setget , get_Charlaconperon
var Charlaconmonstruo: PDCharlaconmonstruo setget , get_Charlaconmonstruo
var PresentacionRamonPuerta: PDPresentacionRamonPuerta setget , get_PresentacionRamonPuerta
var Charlatangalanga: PDCharlatangalanga setget , get_Charlatangalanga
# ---- nodes

# functions ----
func get_CharlaconRamon(): return E.get_dialog('CharlaconRamon')
func get_Charlaconcriptoevangelista(): return E.get_dialog('Charlaconcriptoevangelista')
func get_Charlaconperon(): return E.get_dialog('Charlaconperon')
func get_Charlaconmonstruo(): return E.get_dialog('Charlaconmonstruo')
func get_PresentacionRamonPuerta(): return E.get_dialog('PresentacionRamonPuerta')
func get_Charlatangalanga(): return E.get_dialog('Charlatangalanga')
# ---- functions

