tool
extends PopochiuRoom

const Data := preload('RoomFinalState.gd')

var state: Data = preload('RoomFinal.tres')


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ GODOT ░░░░
# TODO: Overwrite Godot's methods


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# What happens when Popochiu loads the room. At this point the room is in the
# tree but it is not visible
func on_room_entered() -> void:
	pass


# What happens when the room changing transition finishes. At this point the room
# is visible.
func on_room_transition_finished() -> void:
	G.hide_interface()
	yield(E.run([
		'Player: Bien, hasta acá hemos llegado.',
		'Player: Gracias por tanto y perdón por tan poco.',
		'Player: Esto es solo una pequeña demo jugable.',
		'Player: Si encontraste bugs, sumate a chat.rebel.ar y contanos o dejanos tu comentario en itch.',
		'Player: ¡Ah! Recordá que hay otros caminos para llegar a este mensaje.',
		'Player: ¿Ya los encontraste?',
		'Player: Nos olvidamos de mencionar la participación especial de ~peron...',
		'Player: que nos ayudó a reproducir las palabras del General tal cual fueron dictadas en un sueño.',
		'Player: Preparense, porque pronto habran novedadas sobre...',
		'Player: LA TRILOGÍA DE LAS MISIONES.'
		]), 'completed')
	G.hide_interface()


# What happens before Popochiu unloads the room.
# At this point, the screen is black, processing is disabled and all characters
# have been removed from the $Characters node.
func on_room_exited() -> void:
	pass


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ PUBLIC ░░░░
# You could put public functions here


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ PRIVATE ░░░░
# You could put private functions here
