tool
extends PopochiuHotspot
# You can use E.run([]) to trigger a sequence of events.
# Use yield(E.run([]), 'completed') if you want to pause the excecution of
# the function until the sequence of events finishes.


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the node is clicked

func on_interact() -> void:
	if Globals.carta_leida == true :
		E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: Que esté abierto no significa que pueda entrar.",
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
		"Player: Debe ser un barrio muy seguro si dejan la puerta abierta",
	])

# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
	# Replace the call to .on_item_used(item) to implement your code. This only
	# makes the default behavior to happen.
	# For example you can make the PC react on using some items in this Hotspot
#	if item.script_name == 'Key':
#		E.run(['Player: No can do'])
	.on_item_used(item)
