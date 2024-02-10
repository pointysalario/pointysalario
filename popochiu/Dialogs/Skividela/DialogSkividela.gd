tool
extends PopochiuDialog


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
func on_start() -> void:
	yield(E.run([
		'Player: Emm...',
		'Player: Eu',
	]), 'completed')
	
func option_selected(opt: PopochiuDialogOption) -> void:
	opt.turn_on()
	yield(D.say_selected(), 'completed')
	match opt.id:
		'Opt1':
			yield(E.run([
			'Skividela: Afirmativo',
			'Skividela: ¿Ah visto a esas inverbes camaras? hay que destruirlas a toda costa',
			'Player: Me suena más a Yabrán ese comentario.',
			]), 'completed')
			opt.turn_off()
			turn_on_options(['Opt2'])
		'Opt2':
			yield(E.run([
			'Player: No puedo recordar nada...',
			'Player: ¿Estamos muertos? no puedo sentir mi cuerpo, no me puedo mover.',
			'Skividela: ¿Donde vamos a estar sino zurdito?',
			]), 'completed')
			opt.turn_off()
			turn_on_options(['Opt3'])
		'Opt3':
			yield(E.run([
			'Player: ¿Y vos que estás del otro lado del monitor por que me seguis viendo?...',
			'Player: Supongo que sigo presente siempre que me recuerden, como este hdp',
			'Skividela: Afirmativo',
			'Player: Manga de incels, ¿no podían tener un referente menos rancio? ¿Alguien que aguante un sorete?',
			]), 'completed')
			opt.turn_off()
			turn_on_options(['Opt4'])
		'Opt4':
			yield(E.run([
			'Skividela: Afirmativo',
			'Player: Nunca debiste hacerme fumar ese sorete envuelto, me condenaste...',
			'Player: Pero no te sientas culpable, peor es twittear pelotudeces a favor de la derecha...',
			]), 'completed')
			opt.turn_off()
			stop()
			E.goto_room('Final')
	_show_options()

# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ PUBLIC ░░░░
# Use this to save custom data for this PopochiuDialog when saving the game.
# The Dictionary must contain only JSON supported types: bool, int, float, String.
func on_save() -> Dictionary:
	return {}


# Called when the game is loaded.
# This Dictionary should has the same structure you defined for the returned
# one in on_save().
func on_load(data: Dictionary) -> void:
	prints(data)
