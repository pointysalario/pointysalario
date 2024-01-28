tool
extends PopochiuHotspot
# You can use E.run([]) to trigger a sequence of events.
# Use yield(E.run([]), 'completed') if you want to pause the excecution of
# the function until the sequence of events finishes.


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the node is clicked
func on_interact() -> void:
#			if item.script_name == 'Celularcargado' or item.script_name == '350pesos' :
#			E.run([
#				'Player: Bueno, ahora si, a esperar el colectivo',
#				I.remove_item(item.script_name),
#				I.remove_item(script_name),
#				'Player: TRANSICIÓN FINAL'
#				])
	 E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: No me voy a quedar a esperar el colectivo con este calor brutal si ni siquiera tengo para el pasaje."
	])


# When the node is right clicked
func on_look() -> void:
 E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: A priori uno diría que es una parada muy bien diseñada pero con temperaturas como estas, ¿quién quiere sentarse a esperar el colectivo acá?",
		
		
	])



# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
		if item.script_name == 'Celularcargado' or item.script_name == '350pesos' :
			E.run([ 
				'Player: Bueno, ahora si, a esperar el colectivo',
				I.remove_item(item.script_name),
				I.remove_item(script_name),
				'Player: Bien, hasta acá hemos llegado.',
				'Player: Gracias por tanto y perdón por tan poco.',
				'Player: Esto es solo una pequeña demo jugable.',
				'Player: Si encontraste bugs, sumate a chat.rebel.ar y contanos.',
				'Player: ¡Ah! Recordá que hay otros caminos para llegar a este mensaje.',
				'Player: ¿Ya los encontraste?'
				])
