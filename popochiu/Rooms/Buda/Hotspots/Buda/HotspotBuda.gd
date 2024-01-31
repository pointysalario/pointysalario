tool
extends PopochiuHotspot
# You can use E.run([]) to trigger a sequence of events.
# Use yield(E.run([]), 'completed') if you want to pause the excecution of
# the function until the sequence of events finishes.


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the node is clicked
func on_interact() -> void:
	# Replace the call to .on_interact() to implement your code. This only makes
	# the default behavior to happen.
	# For example you can make the character walk to the Hotspot and then say
	# something:
	 E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: Un primo mio me dijo que frotar un Buda trae buena suerte.",
		"Player: Pero ese primo estaba todo el día frotando el Buda y le terminó agarrando unas cagaderas tremendas.",
		"Player: Se hacía baños de asiento y de a doscientos y no paraba de cagarse. Así que no, mejor no quiero tocar al Buda con mis manos."
	])


# When the node is right clicked
func on_look() -> void:
	# Replace the call to .on_look() to implement your code. This only makes
	# the default behavior to happen.
	# For example you can make the character walk to the Hotspot and then say
	# something:
	E.run([
		C.face_clicked(),
		'Player: ¡Es el segundo Buda más grande que he visto!'
	])
	

# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
		if item.script_name == 'Guantes': 
			E.run([
				'Player: Bueno, una cosa es tocarlo con las manos y otra frotarlo con guantes...',
				'Player: Veamos que pasa...',
				I.add_item('100pesos'),
				'Player: Eh, ahora si me trajo suerte, ¡me dio plata!',
				'Player: Ya saben, si van a frotar un Buda y no quieren terminar cagandose encima, usen guantes.'
				])
	
