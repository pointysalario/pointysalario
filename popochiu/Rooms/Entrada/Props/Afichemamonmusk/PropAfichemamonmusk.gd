tool
extends PopochiuProp
# You can use E.run([]) to trigger a sequence of events.
# Use yield(E.run([]), 'completed') if you want to pause the excecution of
# the function until the sequence of events finishes.


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the node is clicked
func on_interact() -> void:
	if Globals.carta_leida == true:
		yield(E.run([
			C.walk_to_clicked(),
			C.face_clicked(),
			"Player: Bueno, quizás me pueda servir de algo, quién sabe.",
			I.add_item('AnuncioMamonMusk'),
		]), 'completed')
	else:
		yield(E.run([
		C.Player.say("No tengo tiempo para mirar nada, primero debo ir de mi prima.")
		]), 'completed')


# When the node is right clicked
func on_look() -> void:
	if Globals.carta_leida == true:
		yield(E.run([
			C.walk_to_clicked(),
			C.face_clicked(),
			'Player: Es uno de esos anuncios para despegar y llevarse. Dice lo siguiente:',
			'Player: ¿QUERÉS SER TU PROPIO JEFE? INVERTÍ CON MAMON MUSK.',
			'Player: ¡Preguntáme cómo!',
			'Player: Mmmm, pero, ¿a quién le pregunto?'
	]), 'completed')
	else:
		yield(E.run([
			C.Player.say("No tengo tiempo para mirar nada, primero debo ir de mi prima.")
		]), 'completed')



# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
	# Replace the call to .on_item_used(item) to implement your code. This only
	# makes the default behavior to happen.
	# For example you can make the PC react on using some items in this Prop
#	if item.script_name == 'Key':
#		E.run(["Player: I can't do that"])
	.on_item_used(item)


# When an inventory item linked to this Prop (link_to_item) is removed from
# the inventory (i.e. when it is used in something that makes use of the object).
func on_linked_item_removed() -> void:
	pass


# When an inventory item linked to this Prop (link_to_item) is discarded from
# the inventory (i.e. when the player throws the object out of the inventory).
func on_linked_item_discarded() -> void:
	pass
