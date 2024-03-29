tool
extends PopochiuRoom

const Data := preload('RoomEntradaState.gd')

var state: Data = preload('RoomEntrada.tres')


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ GODOT ░░░░
# TODO: Overwrite Godot's methods


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# What happens when Popochiu loads the room. At this point the room is in the
# tree but it is not visible
func on_room_entered() -> void:
	A.play_music_no_block('mx_chicharras_pajaros_autos',3)


# What happens when the room changing transition finishes. At this point the room
# is visible.
func on_room_transition_finished() -> void:
	# You can use yield(E.run([]), 'completed') to excecute a queue of instructions
	if state.visited_first_time:
		yield(E.run([
			'Player: Bien, fue un viaje largo, pero llegué a Itaembé Guazú, el barrio de mi prima.',
			'Player: Recuerdo vagamente donde vivía, solo sé que es siguiendo la avenida principal, sé llegar de memoria.',
			'Player: Así que, antes que nada, vamos a buscarla.',
#		C.Player.say("Voy a decir esto 1 vez sola, y nunca más, porque es la primera vez que paso por acá")
		]), 'completed')
	pass

# What happens before Popochiu unloads the room.
# At this point, the screen is black, processing is disabled and all characters
# have been removed from the $Characters node.
func on_room_exited() -> void:
	pass


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ PUBLIC ░░░░
# You could put public functions here


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ PRIVATE ░░░░
# You could put private functions here
