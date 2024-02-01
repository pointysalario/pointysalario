extends PopochiuInventoryItem

const Data := preload('InventoryMandiocacoaxialState.gd')

var state: Data = preload('InventoryMandiocacoaxial.tres')


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ GODOT ░░░░
# TODO: Overwrite Godot's methods as needed


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the item is clicked in the inventory
func on_interact() -> void:
	# Replace the call to .on_interact() to implement your code. This only makes
	# the default behavior to happen.
	.on_interact()


# When the item is right clicked in the inventory
func on_look() -> void:
 E.run([
		"Player: Una mandioca con un cable coaxial. ¿Levantara televisión de aire?",
	])


# When the item is clicked and there is another inventory item selected

func on_item_used(item: PopochiuInventoryItem) -> void:
		if item.script_name == 'Cableusb':
			E.run([
				I.remove_item(item.script_name),
				I.remove_item(script_name),
				A.play('sfx_craftear_item'),
				I.add_item('Generadororganico'),
				'Player: Ok, creo que esto es lo que necesito para poder cargar mi telefono. Ahora, ¿a qué lo conecto?'
				])


# Actions to excecute after the item is added to the Inventory
func on_added_to_inventory() -> void:
	# Replace the call to .on_added_to_inventory() to implement your code. This only
	# makes the default behavior to happen.
	.on_added_to_inventory()


# Actions to excecute when the item is discarded from the Inventory
func on_discard() -> void:
	# Replace the call to .on_discard() to implement your code. This only
	# makes the default behavior to happen.
	.on_discard()
