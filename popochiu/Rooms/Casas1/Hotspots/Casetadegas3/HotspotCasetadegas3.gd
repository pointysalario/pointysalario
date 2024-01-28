tool
extends PopochiuHotspot
# You can use E.run([]) to trigger a sequence of events.
# Use yield(E.run([]), 'completed') if you want to pause the excecution of
# the function until the sequence of events finishes.


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the node is clicked
#func on_interact() -> void:
#	# Replace the call to .on_interact() to implement your code. This only makes
#	# the default behavior to happen.
#	# For example you can make the character walk to the Hotspot and then say
#	# something:
#	if times_clicked >= 1:
#		E.run([
#		C.walk_to_clicked(),
#		C.face_clicked(),
#		'Player: No queda nada, mejor lo dejo cerrado.'
#		])
#	else:
#		E.run([
#		C.walk_to_clicked(),
#		C.face_clicked(),
#		"Player: A ver, si fuerzo un poco quizás puedo abrir.",
#		'Player: Momento, qué es esto...',
#		I.add_item('Mandioca')
#		])

func on_interact() -> void:
	if Globals.carta_leida == true:
		E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: A ver, si fuerzo un poco quizás puedo abrir.",
		'Player: Momento, qué es esto...',
		I.add_item('Mandioca')
		])
	elif times_clicked >= 1 and Globals.carta_leida == true :
		E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		'Player: No queda nada, mejor lo dejo cerrado.'
		])
	else:
		yield(E.run([
		C.Player.say("No tocaré nada hasta no haber ido de mi prima")
		]), 'completed')


# When the node is right clicked
func on_look() -> void:
 E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: Esta caseta está ligeramente abierta.",
	])


# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
	# Replace the call to .on_item_used(item) to implement your code. This only
	# makes the default behavior to happen.
	# For example you can make the PC react on using some items in this Hotspot
#	if item.script_name == 'Key':
#		E.run(['Player: No can do'])
	.on_item_used(item)
