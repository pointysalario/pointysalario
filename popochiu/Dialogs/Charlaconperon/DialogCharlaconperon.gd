tool
extends PopochiuDialog


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
func on_start() -> void:
	yield(E.run([
		'Player: ¡Mi general!',
		'Peron: ¿Qué precisa, compatriota?',
	]), 'completed')
	
func option_selected(opt: PopochiuDialogOption) -> void:
#	yield(D.say_selected(), 'completed')


	match opt.id:
		'quehaceaqui':
			yield(E.run([
				"Peron: Guardo para Misiones un gran lugar en mi corazón. Indudablemente fue durante nuestro gobierno que logramos la provincialización del otrora Territorio Nacional de Misiones",
				'Player: Si, lo sabía, pero...¿acaso usted no...murió?',
				'Peron: ¡"Perón Vuelve"! ¡O usted diría que Eva no está entre nosotros tampoco? ¿O que San Martín espichó?',
				'Peron: Las ideas no se matan, compañero.',
				'Player: Mejor cambiemos de tema',
			opt.turn_off()
			]), 'completed')
			turn_on_options(['perdido'])
#			stop()
		'consulta':
			yield(E.run([
				'Peron: La Educación de las Masas es lo que verdaderamente hace grande a una organización, y la República depende de ella para su crecimiento, que es a lo que todos aspiramos.',
				'Peron: Mas que soldado, yo he sido un educador, y he comprendido el rol que estos tienen como parte integral de un Movimiento de Trabajadores.',
				'Peron: Un Gobierno que ajusta a sus maestros, no puede más que acelerar el quebranto de su Nación. Lo lógico es rechazarlo y combatirlo.',
				'Player: ¿Y cómo hacemos, mi general?',
				'Peron: No es novedad: todo se logra mediante la Organización. Es lo único que puede vencer al tiempo',
			]), 'completed')
			opt.turn_off()
			turn_on_options(['sinorganizacion'])
		'sinorganizacion':
			yield(E.run([
				'Peron: Normalmente un maestro sabe lo qué es bueno para sus alumnos, pero puede perder el rumbo si no tiene en claro lo que es bueno para él...',
				'Peron: Actuando gregariamente, se consumirá solo, como la vela que el cura deja nomás para no chocarse el altar.',
				'Peron: Hace ya milenios que los Egipcios comprendieron que a la pirámide se la construye desde la base hacia el vértice. Este predicamento hemos de seguir los argentinos.',
				'Peron: Una organización de masas que propugne la justicia de un salario digno, será el cimiento material.',
				'Peron: El vértice que apunte a la grandeza que toda organización ha de saber darse lo dará la ideología.',
				'Peron: ¡No me bajes los brazos, muchacho!',
			opt.turn_off()

			]), 'completed')
			
		'perdido':
			yield(E.run([
				'Peron: Sólo se encontrará perdido quien no cuente con una Doctrina que aclare su camino',
				'Peron: Vea, solamente la conformación de un Tercer Mundo podría ser una garantía para que la humanidad pudiese disfrutar de un mundo mejor en el futuro, pero para eso ese Tercer Mundo ha de organizase y fortalecerse.',
				'Player: Lo comprendo, mi general, pero voy a algo más concreto. ¡Tengo que llegar al centro y no sé cómo!',
				opt.turn_off()
			]), 'completed')
			turn_on_options(['doctrina1','ayuda'])
		'doctrina1':
			yield(E.run([
				'Peron: En tiempos aciagos donde uno se ve perdido, hay que desensillar hasta que aclare. Por fortuna siempre podremos recurrir a nuestro basal ideológico:',
				'Peron: ¡Las 20 verdades peronistas!',
				'Player: ¡Pero general, ya las conozco!',
				'Peron: La verdadera democracia es aquella donde el Gobierno hace lo que el Pueblo quiere y defiende un solo interés: el del Pueblo.',
				'Player: Si, ¿pero qué tiene que ver eso con mi pregunta?',
				'Peron: El peronismo es esencialmente anticlonador. Todo circulo politico clonador es antipopular, anti humano y por lo tanto, antiperonista',
				'Player: Esa no se si estaba.',
				'Peron: ¡No me haga confundir!. Lxs peronistas trabajan para el movimiento. El que, en su nombre sirva a un "clonado", no es peronista ni patriota',
				'Player: Esto se pone interesante.',
				'Peron: ¡Natural! ¿No quería consejos para zafar ahora que está mas seco que una galleta?',
			opt.turn_off()
			]), 'completed')
			turn_on_options(['doctrina2'])
		'ayuda':
			yield(E.run([
				'Peron: No sé lo que es una SUBE. Ni le digo lo que cuesta hacer swip en un celular. Dinero no manejo, se me va de las manos.',
				'Peron: Por cierto, ya que le estoy dando una mano, le doy este par de guantes. Le serán de utilidad a usted, quien sabrá darles buen uso',
				'Player: Estem...no es lo que esperaba, pero todo sirve.',
				I.add_item('Guantes'),
				opt.turn_off(),
				stop()
			]), 'completed')
		'doctrina2':
			yield(E.run([
				'Peron: No existe para el peronismo más que una clase de personas: las que trabajan por la grandeza de la Patria y la caída de los falsos "conductores" y clonadores seriales.',
				'Player: Ok, creo que sé a quién se refiere con lo de "conductor"',
				'Peron: En la nueva Argentina de Perón, el trabajo es un Derecho que crea la dignidad del hombre, pero no somos excluyentes. Si hay un clonado, tiene que ser peronista.',
				'Player: Bien, me gusta hacia donde va esto.',
				'Peron: Para un argentino no hay nada mejor que otro argentino. Todo aquel que en su nombre sirve a un círculos que niegan a la nación que nos engloba y une, no pueden ser considerados argentinos.',
				'Player: ¡Ese palo no fue para mi rancho!',
				'Peron: Ningún peronista debe sentirse más de lo que es ni menos de lo que debe ser, a menos que enfrente tenga a un clonado, que por definición, no es nada y no vale un pingo.',
				'Player: jejeje',
				'Peron: La escala de valores peronista es la siguiente: primero la patria, después el movimiento, luego los hombres y finalmente, a las fuerzas del cielo las bajaremos a los tiros',
				'Player: Me gusta cómo se va poniendo esto.',
				'Peron: ¡Sea paciente compañero, la única verdad es la realidad! Usted pidió consejo, entonces, ¿quiere que continúe?',
			opt.turn_off()
			]), 'completed')
			turn_on_options(['doctrina3'])
#		'canse':
#			yield(E.run([
#				'Peron: Una pena, estaré aquí para seguir aconsejandolo, compañero.',
#			opt.turn_off()
#			]), 'completed')
		'doctrina3':
			yield(E.run([
				'Peron: Ya llegaremos a la gran verdad, espere, ¿o acaso nunca jugó una aventura gráfica?',
				'Player: Si, tiene razón mi general',
				'Peron: Frente al objetivo de la UNIDAD NACIONAL, los provincialismos son muy poca cosa.',
				'Player: Je, ¿a quién le hablará el general, no?',
				'Peron: El justicialismo es una filosofía de vida, simple, popular, práctica, humanista y profundamente anti oscuranista y mesiánica.',
				'Peron: En esta tierra, lo mejor que tenemos, es el Pueblo.',
				'Peron: Del cielo vienen las lluvias que riegan nuestros campos, y dan flor a nuestra tierra. La única fuerza del cielo que existe son las fuerzas elementales de la naturaleza. Al resto, las rechazamos, como sea.',
				'Peron: Estas son las 20 verdades peronistas, he dicho.',
				'Player: (Mmmm, a mi me parece que dijo menos. Ups, ¿esto lo dije o lo pensé?)',
				'Peron: Lo pensó. Pero no se preocupe. Tengo la última verdad, la que te ayudará en esta travesía, ¿está dispuesto a oirla?',
			opt.turn_off()
			]), 'completed')
			turn_on_options(['ultimaverdad'])
#		'mecanse':
#			yield(E.run([
#				'Peron: Una pena, compañero. Estaré aquí si me necesita.',
#			opt.turn_off()
#			]), 'completed')
		'ultimaverdad':
			yield(E.run([
				'Peron: ¡Compañeros! La Gran Verdad, aquella que os acompañará en esta senda de esclarecimiento contra un gobierno provincial de Misiones tornado en ajustador serial es...',
				'Peron: Si alguna vez el agua quieres atraer, a rabdomantes y bailarines no debes creer...',
				'Peron: Lava el coche al sol, y atraerás al chaparrón.',
				'Player: Ok...estoy más confundido que antes pero me guardo este consejo.',
			opt.turn_off()
			]), 'completed')
			turn_on_options(['merepite'])
			Globals.dialog_verdad_peronista_done = true
		'merepite':
			yield(E.run([
				'Peron: ¡Compañeros! La Gran Verdad, aquella que os acompañará en esta senda de esclarecimiento contra un gobierno provincial de Misiones tornado en ajustador serial es...',
				'Peron: Si alguna vez el agua quieres atraer, a rabdomantes y bailarines no debes creer...',
				'Peron: Lava el coche al sol, y atraerás al chaparrón.',
				]), 'completed')
		'adios':
			yield(E.run([
				'Peron: Siga, compañero, ¡y no se rinda!'
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
