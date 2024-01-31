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
		'RamonAyala: Qué precisa, muchacho'
	]), 'completed')
	if  I.Mandioca.in_inventory:
		turn_on_options(['generador'])
	if I.Generadororganicoenchufado.in_inventory:
		turn_on_options(['enchufado'])
	if I.Mandiocaaluminada.in_inventory:
		turn_on_options(['aluminio'])

func on_interact() -> void:
	if !Globals.carta_leida == true:
		yield(E.run([
		C.Player.say("No tocaré nada hasta no haber ido de mi prima")
		]), 'completed')
	else:
		Globals.carta_leida ==true
		if I.is_item_in_inventory('Mandioca'):
			E.run([
			C.walk_to_clicked(),
			C.face_clicked(),
			'Player: No queda nada, mejor lo dejo cerrado.'
			])
		else:
			yield(E.run([
			C.walk_to_clicked(),
			C.face_clicked(),
			'Player: A ver, si fuerzo un poco esto.',
			'Player: Momento, qué es esto.',
			I.add_item('Mandioca')
			]), 'completed')




func option_selected(opt: PopochiuDialogOption) -> void:
	# You can make the player character say the selected option with:
#	yield(D.say_selected(), 'completed')
	
	# Use match to check which option was selected and excecute something for
	# each one
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
			turn_on_options(['onirica'])
		'conflicto':
			yield(E.run([
				'Player: ¿Pero sabe algo del conflicto docente?',
				'RamonAyala: Gurí, tengo unos cuantos años más que vos, y esta ya la ví. Las ví todas.',
				'Player: Eso no responde mi pregunta.',
				'RamonAyala: Mire, cuando yo era gurisito, nadie sabía mucha, se trabajaba pero que paguen...',
				'RamonAyala: Eso era otra. Y no es que anduviese viviendo la del mensú del Alto Paraná.',
				'Player: Me imagino, si todos en el barrio lo conocían como "el viejo mano larga".',
				'RamonAyala: No me falte el respeto.',
			]), 'completed')
			opt.turn_off()
		'respeto':
			yield(E.run([
				'Player: ¡No le estoy faltando el respeto!',
				'RamonAyala: Gurí, lo que digo es lo siguiente:',
				'RamonAyala: La historia de Misiones es la historia del país:',
				'RamonAyala: La lucha entre el pueblo y los patrones de estancia.',
				'Player: Patrones de estancia...sí, historia del país.'
			]), 'completed')
		'onirica':
			yield(E.run([
			'Player: ¿Cómo que onirica?¿Qué quiere decir?',
			"RamonAyala: ¡Pero chamigo, si serás lento!¿No quedamos en que estoy muerto?¿Acaso te pensas que INCLUSO LOS MUERTOS tenemos que padecer a los mafiosos transportistas de Casimiro?",
			"Player: ¡Qué suerte estar muerto entonces!",
			"RamonAyala: Verás, es una de sus ventajas, pero tampoco podemos movernos libremente, por lo cual, utilizamos pasajes ocultos entre el monte, los arroyos y los ríos.",
			"Player: ¿Y cómo puedo viajar yo, que no estoy muerto, a través de esos pasajes oníricos?",
			"RamonAyala: Me extraña, chamigo, las puertas de la percepción se abren para quienes saben encontrar la llave. Buscala y sabrás cómo viajar"
			]), 'completed')
			opt.turn_off()
		'generador':
			yield(E.run([
			'Player: ¿Sabe cómo puedo hacer para cargar un celular?',
			'RamonAyala: Vengo de otra tierra, de otros caminos donde no se usan celulares.',
			'Player: Pero ahora está en ESTA tierra.',
			'RamonAyala: Bueno, en ese caso... en la época de Perón, antes y durante la provincialización...',
			'RamonAyala: Las Colonias Experimentales hicieron algunos avances con baterias a base de mandioca y envueltas en algún tipo de metal.',
			'Player: Eso suena bastante oportuno.',
			'RamonAyala: Bueno, así funciona el game design así nomás.',
				
			]), 'completed')
			opt.turn_off()
		'enchufado':
			yield(E.run([
			'Player: Armé esto, ¿y ahora que se le ocurre, Ramon?',
			'RamonAyala: Gurí, ya te ayudé un montón, no sea pesado.',
			'Player: ¡Pero es que me falta tan poco!',
			'RamonAyala: ¡Entonces enchufelo donde sea y ya!',
			]), 'completed')
			opt.turn_off()
		'aluminio':
			yield(E.run([
			'Player:¿Y ahora que tengo una mandioca aluminada?',
			'RamonAyala: ¿Ya estamos en el mes del aluminio?',
			'Player: Eh... no sé.',
			'RamonAyala: Gurí, eso parece más un cigarillo de droga que otra cosa.',
			'RamonAyala: Te ayudé demasiado, pensá un poco vos.',
			opt.turn_off()
			]), 'completed')
			
			
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
