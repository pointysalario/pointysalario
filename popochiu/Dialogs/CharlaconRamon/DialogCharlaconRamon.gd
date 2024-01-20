tool
extends PopochiuDialog


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
func on_start() -> void:
	# One can put here something to excecute before showing the dialog options.
	# E.g. Make the PC to look at the character which it will talk to, walk to
	# it, and say something (or make the character say something)
	# (!) It MUST always use a yield
	yield(E.run([
		'Player: Estem...',
		'Lagomarsinojr: Qué precisa, muchacho'
	]), 'completed')

func option_selected(opt: PopochiuDialogOption) -> void:
	# You can make the player character say the selected option with:
#	yield(D.say_selected(), 'completed')
	
	# Use match to check which option was selected and excecute something for
	# each one
	match opt.id:
		'Muerto':
			yield(E.run([
			"RamonAyala:Si, es cierto, pero eso no impide que esté aquí, disfrutando de estos 45 grados de sensación térmica",
			"Player: Eso no tiene mucha lógica. ¿Estoy hablando con un muerto?",
			"RamonAyala: No está muerto lo que puede yacer eternamente. ¿Acaso tú, muchacho, dirías que el Paraná está muerto?",
			"Player: Mejor cambiemos de tema",
			opt.turn_off()
			]), 'completed')
		'ComoLlegar':
			yield(E.run([
			"RamonAyala: Si, por supuesto, hay dos maneras de llegar, pero, ¿para qué querés ir al centro? Acá tenés todo lo que necesitas.",
			"Player: Es que mis colegas docentes están de huelga, la provincia recortó nuestro sueldo y necesito ir a la asamblea que se realiza en la Plaza 9 de Julio",
			"RamonAyala: Ah, entiendo. Tenes dos maneras de ir.",
			"Player: ¿Cuáles son?",
			"RamonAyala: Cualquier colectivo te llevará hasta el centro, si es que lográs que los planetas se alineen y pasen a tiempo.",
			"Player: ¿Y la otra forma?",
			"RamonAyala: Bueno, es un tanto más...onírica"
			]), 'completed')
			opt.turn_off()
			turn_on_options(['onirica'])
		'onirica':
			yield(E.run([
			"RamonAyala: ¡Pero chamigo, si serás lento!¿No quedamos en que estoy muerto?¿Acaso te pensas que INCLUSO LOS MUERTOS tenemos que padecer a los mafiosos transportistas de Casimiro?",
			"Player: ¡Qué suerte estar muerto entonces!",
			"RamonAyala: Verás, es una de sus ventajas, pero tampoco podemos movernos libremente, por lo cual, utilizamos pasajes ocultos entre el monte, los arroyos y los ríos.",
			"Player: ¿Y cómo puedo viajar yo, que no estoy muerto, a través de esos pasajes oníricos?",
			"RamonAyala: Me extraña, chamigo, las puertas de la percepción se abren para quienes saben encontrar la llave. Buscala y sabrás cómo viajar"
			]), 'completed')
			opt.turn_off()
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
