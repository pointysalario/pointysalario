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
const PIIMandioca := preload('res://popochiu/InventoryItems/Mandioca/InventoryMandioca.gd')
const PIIAluminio := preload('res://popochiu/InventoryItems/Aluminio/InventoryAluminio.gd')
const PIICablecoaxial := preload('res://popochiu/InventoryItems/Cablecoaxial/InventoryCablecoaxial.gd')
const PIICableusb := preload('res://popochiu/InventoryItems/Cableusb/InventoryCableusb.gd')
const PIIMandiocaaluminada := preload('res://popochiu/InventoryItems/Mandiocaaluminada/InventoryMandiocaaluminada.gd')
const PIIGeneradororganico := preload('res://popochiu/InventoryItems/Generadororganico/InventoryGeneradororganico.gd')
const PIIMandiocausb := preload('res://popochiu/InventoryItems/Mandiocausb/InventoryMandiocausb.gd')
const PIIMandiocacoaxial := preload('res://popochiu/InventoryItems/Mandiocacoaxial/InventoryMandiocacoaxial.gd')
const PIICucumelo := preload('res://popochiu/InventoryItems/Cucumelo/InventoryCucumelo.gd')
const PIIGeneradororganicoenchufado := preload('res://popochiu/InventoryItems/Generadororganicoenchufado/InventoryGeneradororganicoenchufado.gd')
const PIICelularcargado := preload('res://popochiu/InventoryItems/Celularcargado/InventoryCelularcargado.gd')
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
var Mandioca: PIIMandioca setget , get_Mandioca
var Aluminio: PIIAluminio setget , get_Aluminio
var Cablecoaxial: PIICablecoaxial setget , get_Cablecoaxial
var Cableusb: PIICableusb setget , get_Cableusb
var Mandiocaaluminada: PIIMandiocaaluminada setget , get_Mandiocaaluminada
var Generadororganico: PIIGeneradororganico setget , get_Generadororganico
var Mandiocausb: PIIMandiocausb setget , get_Mandiocausb
var Mandiocacoaxial: PIIMandiocacoaxial setget , get_Mandiocacoaxial
var Cucumelo: PIICucumelo setget , get_Cucumelo
var Generadororganicoenchufado: PIIGeneradororganicoenchufado setget , get_Generadororganicoenchufado
var Celularcargado: PIICelularcargado setget , get_Celularcargado
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
func get_Mandioca(): return ._get_item_instance('Mandioca')
func get_Aluminio(): return ._get_item_instance('Aluminio')
func get_Cablecoaxial(): return ._get_item_instance('Cablecoaxial')
func get_Cableusb(): return ._get_item_instance('Cableusb')
func get_Mandiocaaluminada(): return ._get_item_instance('Mandiocaaluminada')
func get_Generadororganico(): return ._get_item_instance('Generadororganico')
func get_Mandiocausb(): return ._get_item_instance('Mandiocausb')
func get_Mandiocacoaxial(): return ._get_item_instance('Mandiocacoaxial')
func get_Cucumelo(): return ._get_item_instance('Cucumelo')
func get_Generadororganicoenchufado(): return ._get_item_instance('Generadororganicoenchufado')
func get_Celularcargado(): return ._get_item_instance('Celularcargado')
# ---- functions

