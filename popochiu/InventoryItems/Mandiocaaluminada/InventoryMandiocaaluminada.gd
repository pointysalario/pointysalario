extends PopochiuInventoryItem

const Data := preload('InventoryMandiocaaluminadaState.gd')

var state: Data = preload('InventoryMandiocaaluminada.tres')


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
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: Una mandioca aluminada. Se ve un tanto...extraña.",
	])


# When the item is clicked and there is another inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
		if item.script_name == 'Cablecoaxial':
			E.run([
				I.remove_item(item.script_name),
				I.remove_item(script_name),
				I.add_item('Mandiocacoaxial'),
				'Player: Bueno, esto ya va tomando forma.'
				])
		elif item.script_name == 'Cableusb':
			E.run([
				I.remove_item(item.script_name),
				I.remove_item(script_name),
				I.add_item('Mandiocausb'),
				'Player: Bueno, esto ya va tomando forma.'
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
