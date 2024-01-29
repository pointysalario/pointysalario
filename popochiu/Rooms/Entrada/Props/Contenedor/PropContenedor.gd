tool
extends PopochiuProp
# You can use E.run([]) to trigger a sequence of events.
# Use yield(E.run([]), 'completed') if you want to pause the excecution of
# the function until the sequence of events finishes.


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the node is clicked
func on_interact() -> void:
	if Globals.carta_leida == true:
		E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		'Player: Es probable que haya algo interesante allí pero bajo ningún punto de vista tocare esa basura.',
		'Player: Cons lo 45º grados de térmica que hay, debe haber un jcaldo de basura asqueroso.'
	])
	else:
		yield(E.run([
		C.Player.say("No tengo tiempo para mirar nada, primero debo ir de mi prima.")
		]), 'completed')
	


# When the node is right clicked
func on_look() -> void:
	if Globals.carta_leida == true:
		E.run([
		C.face_clicked(),
		C.walk_to_clicked(),
		'Player: "Posadas siempre linda"...me permito dudar.',
		'Player: Mi prima ya me había dicho que acá los vecinos tienen una pésima gestión de sus residuos.',
		'Player: Falta mucha concientización, evidentemente.'
	])
	else:
		yield(E.run([
		C.Player.say("No tengo tiempo para mirar nada, primero debo ir de mi prima.")
		]), 'completed')



# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
	if item.script_name == 'Guantes':
		if !I.is_item_in_inventory('Cablecoaxial'):
			E.run([
			'Player: Bueno, con los guantes si me animo a revolver...',
			'Player: A ver qué encontramos',
			I.add_item('Cablecoaxial'),
			'Player: Nunca viene de más un poco de cable coaxial.',
		])
		elif !I.is_item_in_inventory('Cableusb'):
			E.run([
				'Player: Veamos si aparece algo más...',
				I.add_item('Cableusb'),
				'Player: Bueno, esto si me puede servir',
				'Player: Creo que ya no hay nada interesante.'
				])
		else:
			E.run([
				'Player: Uy rompí los guantes con una chapa... menos mal que tengo la antitetanica',
				'Player: Igual por suerte ya no hay mas nada interesante acá adentro',
				I.remove_item('Guantes'),
			])


# When an inventory item linked to this Prop (link_to_item) is removed from
# the inventory (i.e. when it is used in something that makes use of the object).
func on_linked_item_removed() -> void:
	pass


# When an inventory item linked to this Prop (link_to_item) is discarded from
# the inventory (i.e. when the player throws the object out of the inventory).
func on_linked_item_discarded() -> void:
	pass
