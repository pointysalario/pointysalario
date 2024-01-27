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
		'Player: ¡Esta si es la casa de mi prima!',
		"Player: A ver, golpeemos.",
		"Player: Qué extraño, dijo que me iba a estar esperando.",
		"Player: ¡Y encima no tengo batería en el télefono!",
		"Player: Pero...qué es eso? Parece ser una nota entre la rendija de la puerta. A ver",
		"Player: Querido primo, espero no te pitchees, pero te estuve mandando mensajes y no te llegaban.",
		"Player: Me fui a la Plaza 9 de Julio, al centro. Hay Asamblea Docente por el recorte salarial que venimos padeciendo.",
		"Player: Venite porque voy a estar un buen rato, ¿sabes?",
		"Player: Te esper allá.",
		"Player: Ok...¿Y cómo carajo llegó al centro de Posadas?",
		"Player: Encima a esta hora no hay nadie en la calle como para preguntar",
	
	])
	Globals.carta_leida = true



# When the node is right clicked
func on_look() -> void:
	E.run([
		C.face_clicked(),
		C.walk_to_clicked(),
		'Player: ¡Si! Está es la casa de mi primo, ya lo recordé, está al lado de esta rotisería increíble.'
	])



# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
	# Replace the call to .on_item_used(item) to implement your code. This only
	# makes the default behavior to happen.
	# For example you can make the PC react on using some items in this Hotspot
#	if item.script_name == 'Key':
#		E.run(['Player: No can do'])
	.on_item_used(item)
