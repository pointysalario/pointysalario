extends PopochiuInventoryItem

const Data := preload('InventoryAnuncioMamonMuskState.gd')

var state: Data = preload('InventoryAnuncioMamonMusk.tres')


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
		'Player: Es uno de esos anuncios para despegar y llevarse. Dice lo siguiente:',
		'Player: ¿QUERÉS SER TU PROPIO JEFE? INVERTÍ CON MAMON MUSK.',
		'Player: ¡Preguntáme cómo!',
		'Player: Mmmm, pero, ¿a quién le pregunto?'
	])


# When the item is clicked and there is another inventory item selected

func on_item_used(item: PopochiuInventoryItem) -> void:
		if item.script_name == 'TarjetaSUBE':
			E.run([
				'Player: Bueno, tal vez pueda pegar esto con esto y...',
				I.remove_item(item.script_name),
				I.remove_item(script_name),
				A.play('sfx_craftear_item'),
				I.add_item('TarjetaMamonMusk'),
				'Player: Ahora si, una autentica tarjeta de Mamon Musk.'
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
