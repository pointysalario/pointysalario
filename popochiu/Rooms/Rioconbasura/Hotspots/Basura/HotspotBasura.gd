tool
extends PopochiuHotspot
# You can use E.run([]) to trigger a sequence of events.
# Use yield(E.run([]), 'completed') if you want to pause the excecution of
# the function until the sequence of events finishes.

#
# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the node is clicked
func on_interact() -> void:
	if Globals.dialog_verdad_peronista_done == true and Globals.dialog_cucumelo_lluvia_done == true and Globals.inspect_lavame_done == true:
		if I.Baldecondetergente.in_inventory or I.Baldeconespuma.in_inventory:
			E.run([
			C.walk_to_clicked(),
			C.face_clicked(),
			"Player: Bueno, ya no hay nada que me sirva.",
			])
		else:
			E.run([
			C.walk_to_clicked(),
			C.face_clicked(),
			"Player: Bueno, visto y considerando lo que estuve averiguando, creo que este balde con detergente me puede servir.",
			I.add_item('Baldecondetergente'),
			])
	else:
		E.run([
	C.walk_to_clicked(),
	C.face_clicked(),
	'Player: Hay basura variada, desde un cubo con detergente con una esponja media podrida hasta juguetes tirados, pañales, botellas...',
	'Player: No, no veo motivo alguno para llevarme estas cosas, al menos por ahora.'
	])





#func on_interact() -> void:
#	if Globals.dialog_verdad_peronista_done == true and Globals.dialog_cucumelo_lluvia_done == true and Globals.inspect_lavame_done == true :
#		E.run([
#		C.walk_to_clicked(),
#		C.face_clicked(),
#		"Player: Bueno, visto y considerando lo que estuve averiguando, creo que este balde con detergente me puede servir.",
#		I.add_item('Baldecondetergente'),
#		])
#		if I.Baldecondetergente.in_inventory or I.Baldeconespuma.in_inventory:
#			E.run([
#			C.walk_to_clicked(),
#			C.face_clicked(),
#			"Player: Bueno, ya no hay nada que me sirva.",
#		])
#
#	else:
#		E.run([
#		C.walk_to_clicked(),
#		C.face_clicked(),
#		'Player: Hay basura variada, desde un cubo con detergente con una esponja media podrida hasta juguetes tirados, pañales, botellas...',
#		'Player: No, no veo motivo alguno para llevarme estas cosas, al menos por ahora.'
#		])
#	 E.run([
#		C.walk_to_clicked(),
#		C.face_clicked(),
#		'Player: Hay basura variada, desde un cubo con detergente con una esponja media podrida hasta juguetes tirados, pañales, botellas...',
#		'Player: No, no veo motivo alguno para llevarme estas cosas, al menos por ahora.'
#
#	])




# When the node is right clicked
func on_look() -> void:
	 E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		'Player: Parecería ser que esta zona no forma parte de Posadas.',
		'Player: Digo, porque eso de "Posadas,linda de nuevo" está muy lejos de ser real',
		'Player: ¿La limpieza del ambiente aplica solo a los lugares turísticos que frecuentan los canales de televisión?'
		
	])




# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
	# Replace the call to .on_item_used(item) to implement your code. This only
	# makes the default behavior to happen.
	# For example you can make the PC react on using some items in this Hotspot
#	if item.script_name == 'Key':
#		E.run(['Player: No can do'])
	.on_item_used(item)
