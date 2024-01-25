extends PopochiuInventoryItem

const Data := preload('InventoryGuantesState.gd')

var state: Data = preload('InventoryGuantes.tres')


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
	# Replace the call to .on_look() to implement your code. This only makes
	# the default behavior to happen.
	.on_look()


# When the item is clicked and there is another inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
	.on_item_used(item)
#		if PopochiuHotspot.script_name == 'guantes':
#			E.run([
#				'Player: Bueno, una cosa es tocarlo con las manos y otra frotarlo con guantes...',
#				'Player: Veams que pasa...',
#				I.add_item('250pesos'),
#				'Player: Eh, ahora si me trajo suerte, ¡me dio plata!',
#				'Player: Ya saben, si van a frotar un Buda y no quieren terminar cagandose encima, usen guantes.'
#				])
	


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
