tool
extends PopochiuHotspot
# You can use E.run([]) to trigger a sequence of events.
# Use yield(E.run([]), 'completed') if you want to pause the excecution of
# the function until the sequence of events finishes.


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the node is clicked


#func on_interact() -> void:
#	if Globals.carta_leida == true :
#		E.run([
#		C.walk_to_clicked(),
#		C.face_clicked(),
#		"Player: A ver...",
#		"Player: Si... ¿Una tarjeta SUBE nacional?",
#		"Player: Ugh, qué asco, está muy pegajosa, como si tuviera algún tipo de pegamento.",
#		"Player: No me servirá de mucho aquí, pero bueno, me la llevo.",
#		I.add_item('TarjetaSUBE')
#		])
#	else:
#		yield(E.run([
#		C.Player.say("No tocaré nada hasta no haber ido de mi prima")
#		]), 'completed')

func on_interact() -> void:
	if !Globals.carta_leida == true:
		yield(E.run([
		C.Player.say("No tocaré nada hasta no haber ido de mi prima")
		]), 'completed')
	else:
		Globals.carta_leida ==true
		if I.is_item_in_inventory('TarjetaSUBE'):
			E.run([
			C.walk_to_clicked(),
			C.face_clicked(),
			'Player: Ya no hay nada interesante en esta plantera, solo tierra reseca.'
			])
		else:
			yield(E.run([
			C.walk_to_clicked(),
			C.face_clicked(),
			"Player: A ver...",
			"Player: Si... ¿Una tarjeta SUBE nacional?",
			"Player: Ugh, qué asco, está muy pegajosa, como si tuviera algún tipo de pegamento.",
			"Player: No me servirá de mucho aquí, pero bueno, me la llevo.",
			I.add_item('TarjetaSUBE')
			]), 'completed')




# When the node is right clicked
func on_look() -> void:
	 E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: Parece haber algo en medio de las plantas.",
		
	])



# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
	# Replace the call to .on_item_used(item) to implement your code. This only
	# makes the default behavior to happen.
	# For example you can make the PC react on using some items in this Hotspot
#	if item.script_name == 'Key':
#		E.run(['Player: No can do'])
	.on_item_used(item)
