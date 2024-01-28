tool
extends PopochiuProp
# You can use E.run([]) to trigger a sequence of events.
# Use yield(E.run([]), 'completed') if you want to pause the excecution of
# the function until the sequence of events finishes.

var mouse_enabled = true
# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the node is clicked


func on_interact() -> void:
	if Globals.carta_leida == true :
		 E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: ¿Por qué tendría que lavarlo yo? Además, no tengo con qué.",
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
		"Player: Creo que el mensaje es bastante claro.",
		
	])
	Globals.inspect_lavame_done = true



# When the node is clicked and there is an inventory item selected

func on_item_used(item: PopochiuInventoryItem) -> void:
		if item.script_name == 'Baldeconespuma':
			yield(E.run([
				'Player: ¿Será que mi misión en este mundo es lavar autos ajenos?',
				'Player: ¿Será que Perón tiene razón y el mejor ritual para llamar a la lluvia es lavar el auto?',
				'Player: Nunca especificó si tiene que ser TU auto o cualquier auto. Probemos...',
				I.remove_item('Baldeconespuma')
				]),'completed')
			$"../../AnimationPlayer".play("Tiempo espera")
		Globals.lluvia = true
func transicion():
	E.run([
		disable(),
		'Player: 400 milimetros de lluvia luego...'
		])
	

func mouse_interactions(valor):
	 get_tree().get_root().set_disable_input(valor)
func _on_Timer_timeout():
	mouse_enabled = true

# When an inventory item linked to this Prop (link_to_item) is removed from
# the inventory (i.e. when it is used in something that makes use of the object).
func on_linked_item_removed() -> void:
	pass


# When an inventory item linked to this Prop (link_to_item) is discarded from
# the inventory (i.e. when the player throws the object out of the inventory).
func on_linked_item_discarded() -> void:
	pass

