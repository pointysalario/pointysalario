tool
extends PopochiuHotspot
# You can use E.run([]) to trigger a sequence of events.
# Use yield(E.run([]), 'completed') if you want to pause the excecution of
# the function until the sequence of events finishes.


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the node is clicked
func on_interact() -> void:
	 E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: De ninguna manera, si me tengo que tirar al agua, que sea en un rio o arroyo, no en un canal.",
	])


# When the node is right clicked
func on_look() -> void:
	# Replace the call to .on_look() to implement your code. This only makes
	# the default behavior to happen.
	# For example you can make the character walk to the Hotspot and then say
	# something:
	E.run([
		C.face_clicked(),
		'Player: Para ser agua del canal, se ve bastante limpia.'
	])


# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
		if item.script_name == 'Baldecondetergente':
			E.run([
				'Player: Le agregamos un poco de agua y...',
				'Player: Listo, un espumante balde de agua con esponja',
				I.remove_item('Baldecondetergente'),
				I.add_item('Baldeconespuma'),
				])
