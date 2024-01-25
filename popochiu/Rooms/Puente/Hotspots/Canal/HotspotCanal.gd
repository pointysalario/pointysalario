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
#	E.run([
#		C.walk_to_clicked(),
#		C.face_clicked(),
#		"Player: Can't open it"
#	])
	.on_interact()


# When the node is right clicked
func on_look() -> void:
	E.run([
		C.face_clicked(),
		C.walk_to_clicked(),
		'Player: Hay un canal que divide el barrio en dos.',
		'Player: Seguramente, antes que exista el barrio, por aquí corría un arroyo.',
		'Player: Ahora, junta agua de la lluvia y los desagues pluviales.',
		'Player: Es una pena, pero muchas veces está lleno de basura. Los vecinos no son ciudadosos con sus residuos.'
	])




# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
	# Replace the call to .on_item_used(item) to implement your code. This only
	# makes the default behavior to happen.
	# For example you can make the PC react on using some items in this Hotspot
#	if item.script_name == 'Key':
#		E.run(['Player: No can do'])
	.on_item_used(item)
