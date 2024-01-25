tool
extends PopochiuCharacter

const Data := preload('CharacterCriptoevangelistaState.gd')

var state: Data = preload('CharacterCriptoevangelista.tres')


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the PopochiuRoom where this node was already loaded
func on_room_set() -> void:
	pass


# When the node is clicked
func on_interact() -> void:
	# Replace the call to .on_interact() to implement your code. This only makes
	# the default behavior to happen.
	D.show_dialog('Charlaconcriptoevangelista')


# When the node is right clicked
func on_look() -> void:
	E.run([
		C.face_clicked(),
		'Player: Está muy concentrado mirando análisis de mercados y videos de tele-evangelistas al mismo tiempo.'
	])


# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
	if item.script_name == 'AnuncioMamonMusk':
		E.run([
			C.walk_to_clicked(),
			C.face_clicked(),
				'Criptoevangelista: Bah, ese anuncio es truchisimo, no me vas a hacer caer en esa truchada.',
				'Criptoevangelista: Los verdaderos traders de MamṕṕónMusk tienen tarjetas oficiales de inversión',
			])
	elif item.script_name == 'TarjetaMamonMusk':
		E.run([
			C.walk_to_clicked(),
			C.face_clicked(),
			E.camera_shake_no_block(1,2),
				'Criptoevangelista: ¡UNA TARJETA OFICIAL DE INVERSIONISTA DE MAMÓNMUSK',
				'Criptoevangelista: No es que tenga mucho metálico ahora, el enlace del cripto diezmo todavía está en viaje.',
				'Criptoevangelista: Pero tome, hermano, todo sea por ser parte de las fuerzas del CriptoMamṕṕón.',
				I.remove_item('TarjetaMamonMusk'),
				I.add_item('250Pesos'),
				'Player: Jeje que manera de cazar giles.',
				'Criptoevangelista: ¿Qué dijiste hermano?',
				'Player: Que ya llegó mi primo de San Andres de Giles.',
			
			])

# Use it to play the idle animation for the character
func play_idle() -> void:
	.play_idle()


# Use it to play the walk animation for the character
# target_pos can be used to know the movement direction
func play_walk(target_pos: Vector2) -> void:
	.play_walk(target_pos)


# Use it to play the talk animation for the character
func play_talk() -> void:
	.play_talk()


# Use it to play the grab animation for the character
func play_grab() -> void:
	.play_grab()
