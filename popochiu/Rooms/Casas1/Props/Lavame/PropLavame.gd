tool
extends PopochiuProp
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
		"Player: ¿Por qué tendría que lavarlo yo? Además, no tengo con qué."
	])


# When the node is right clicked
func on_look() -> void:
	E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: Creo que el mensaje es bastante claro.",
		
	])
	Globals.inspect_lavame_done = true



# When the node is clicked and there is an inventory item selected

func on_item_used(item: PopochiuInventoryItem) -> void:
		if item.script_name == 'Baldeconespuma':
			E.run([
				'Player: ¿Será que mi misión en este mundo es lavar autos ajenos?',
				'Player: ¿Será que Perón tiene razón y el mejor ritual para llamar a la lluvia es lavar el auto?',
				'Player: Nunca especificó si tiene que ser TU auto o cualquier auto. Probemos...',
				I.remove_item('Baldeconespuma'),
				disable()
				])

# When an inventory item linked to this Prop (link_to_item) is removed from
# the inventory (i.e. when it is used in something that makes use of the object).
func on_linked_item_removed() -> void:
	pass


# When an inventory item linked to this Prop (link_to_item) is discarded from
# the inventory (i.e. when the player throws the object out of the inventory).
func on_linked_item_discarded() -> void:
	pass
