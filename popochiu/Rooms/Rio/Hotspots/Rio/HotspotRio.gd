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
		'Player: Acá el agua se ve más turbia, viene arrastrando tierra de todo el canal.',
		'Player: Es llamativo el contraste con la vegetación, que se ve como si fuera monte natural'
	])


# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
		if item.script_name == 'Baldecondetergente':
			E.run([
				'Player: Eh...no, tendría un balde con espumante agua turbia.',
				])
