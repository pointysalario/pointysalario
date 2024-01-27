tool
extends PopochiuHotspot
# You can use E.run([]) to trigger a sequence of events.
# Use yield(E.run([]), 'completed') if you want to pause the excecution of
# the function until the sequence of events finishes.


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the node is clicked
func on_interact() -> void:
	if times_clicked >= 1:
		E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: Solo quedan porquerías y basura para nada interesante"
		])

	else:
		E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: Uggh, la basura parece más podrída que antes pero...¿qué es eso?",
		"Player: ¿Un espejaime?¿Aquí, ahora, y en este barrio? ¡Me lo llevo!",
		I.add_item('Espejaime')
		])


# When the node is right clicked
func on_look() -> void:
	# Replace the call to .on_look() to implement your code. This only makes
	# the default behavior to happen.
	# For example you can make the character walk to the Hotspot and then say
	# something:
	 E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: Estoy en el mismo espacio y tiempo porque esa basura sigue pudriéndose.",
		
	])

# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
	# Replace the call to .on_item_used(item) to implement your code. This only
	# makes the default behavior to happen.
	# For example you can make the PC react on using some items in this Hotspot
#	if item.script_name == 'Key':
#		E.run(['Player: No can do'])
	.on_item_used(item)
