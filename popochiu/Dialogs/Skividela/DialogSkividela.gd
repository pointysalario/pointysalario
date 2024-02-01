tool
extends PopochiuDialog


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
func on_start() -> void:
	yield(E.run([
		'Player: Emm...',
		'Player: Eu',
	]), 'completed')
	if Globals.lluvia == true:
		turn_on_options(['lluvia'])
func option_selected(opt: PopochiuDialogOption) -> void:
	yield(D.say_selected(), 'completed')
	match opt.id:
		'Muerto':
			yield(E.run([
			'Player: Usted se parece mucho a Ramón Ayala, pero él murió hace unos meses.',
			"RamonAyala:Si, es cierto, pero eso no impide que esté aquí, disfrutando de estos 45 grados de sensación térmica",
			"Player: Eso no tiene mucha lógica. ¿Estoy hablando con un muerto?",
			"RamonAyala: No está muerto lo que puede yacer eternamente. ¿Acaso tú, muchacho, dirías que el Paraná está muerto?",
			"Player: Mejor cambiemos de tema",
			opt.turn_off()
			]), 'completed')
		'ComoLlegar':
			yield(E.run([
			'Player: ¿Sabe cómo puedo llegar a la Plaza 9 de Julio?',
			"RamonAyala: Si, por supuesto, hay dos maneras de llegar, pero, ¿para qué querés ir al centro? Acá tenés todo lo que necesitas.",
			"Player: Es que mis colegas docentes están de huelga, la provincia recortó nuestro sueldo y necesito ir a la asamblea que se realiza en la Plaza 9 de Julio",
			"RamonAyala: Ah, entiendo. Tenés dos maneras de ir.",
			"Player: ¿Cuáles son?",
			"RamonAyala: Cualquier colectivo te llevará hasta el centro, si es que lográs que los planetas se alineen y pasen a tiempo.",
			"Player: ¿Y la otra forma?",
			"RamonAyala: Bueno, es un tanto más...onírica"
			]), 'completed')
#			opt.turn_off()
			turn_on_options(['adios'])
		'adios':
			yield(E.run([
			'Player: Tengo que irme.',
			]), 'completed')
			stop()
	
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
