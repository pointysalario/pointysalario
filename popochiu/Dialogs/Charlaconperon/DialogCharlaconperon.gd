tool
extends PopochiuDialog


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
func on_start() -> void:
	yield(E.run([
		'Player: ¡Mi general!',
		'Peron: ¿Qué precisa, compatriota?',
	]), 'completed')
	
func option_selected(opt: PopochiuDialogOption) -> void:
	yield(D.say_selected(), 'completed')


	match opt.id:
		'quehaceaqui':
			yield(E.run([
				"Peron: Compañero, Misiones es como mi hogar, imagino que sabía usted que fue durante nuestro gobierno que logramos la provincialización del otrora Territorio Nacional de Misiones",
				'Player: Si, lo sabía, pero...¿acaso usted no...murió?',
				'Peron: ¡Pero dejese de zonzeras, compañero!¡Usted diría que Eva está muerta?¿Que San Martín está muerto?',
				'Peron: Las ideas no se matan, compañero.',
				'Player: Mejor cambiemos de tema',
			opt.turn_off()
			]), 'completed')
			turn_on_options(['perdido'])
#			stop()
		'consulta':
			yield(E.run([
				'Peron: Compañero. En la Argentina de Eva y Peron, estas cosas serían impensadas. Nada más importante hay que la educación de las masas.',
				'Peron: Además, los docentes son parte de la masa organizada del Movimiento Obrero y como tal, deben ser bien remunerados.',
				'Peron: Todo gobierno que utilice como variable de ajuste a la masa trabajadora, debe ser rechazado y combatido',
				'Player: ¿Y cómo, mi general?',
				'Peron: Compañero, lo he dicho una y mil veces. ¡La organización vence al tiempo!',
			]), 'completed')
			opt.turn_off()
			turn_on_options(['sinorganizacion'])
		'sinorganizacion':
			yield(E.run([
				'Peron: Muchos compañeros y compañeras han perdido el rumbo, han sido cooptados ya sea por los carneros, que siempre existieron...',
				'Peron: Como también por la apatía total, que adormece a los espiritus y apaga el alma como una vela que se consume en la soledad de la noche',
				'Peron: Es nuestro deber como argentinos organizar a las masas. Sin odio, sin resentimientos, sin rencores...',
				'Peron: Solo con el amor y la verdad lograremos que nuestros compatriotas puedan distinguir al bueno del malo...',
				'Peron: al bruto del inteligente, al necio del avispado, al malicioso del bondadoso, al negligente del buen ciudadano.',
				'Peron: ¡No me bajes los brazos, muchacho!',
			opt.turn_off()
			]), 'completed')
			
		'perdido':
			yield(E.run([
				'Peron: ¿Perdido, compañero? ¡Solamente aquel que no se organiza se halla perdido!',
				'Peron: Cuando nuestra querida Eva, porque nunca fue mia sino del Pueblo argentino, pasó a la inmortalidad... cuando las masas la lloraron por tanto tiempo. ¡Eso era estar perdido! ¿De qué me habla, muchacho?',
				'Player: Lo comprendo, mi general, pero voy a algo más concreto. ¡Tengo que llegar al centro y no sé cómo!',
				opt.turn_off()
			]), 'completed')
			turn_on_options(['doctrina1','ayuda'])
		'doctrina1':
			yield(E.run([
				'Peron: ¡Compañero! En tiempos donde uno se haya perdido y precisa un norte orientador, debe ir siempre hacia las bases, que en este caso son...',
				'Peron: ¡Las 20 verdades peronistas!',
				'Player: ¡Pero general, ya las conozco!',
				'Peron: La verdadera democracia es aquella donde el gobierno hace lo que el pueblo quiere y defiende un solo interés: el del pueblo.',
				'Player: Si, ¿pero qué tiene que ver eso con mi pregunta?',
				'Peron: El peronismo es esencialmente anticlonados. Todo circulo politico clonador es antipopular, anti humano y por lo tanto, antiperonista',
				'Player: Esa me parece que es nueva.',
				'Peron: ¡Silencio!. Lxs peronistas trabajan para el movimiento. El que, en su nombre, sirva a un "clonado", no es peronista ni patriota',
				'Player: Esto se pone interesante.',
				'Peron: Compañero, ¿va a seguir interrumpiendo? ¿No quería consejos para guiarse en este peculiar situación en la que se halla?',
			opt.turn_off()
			]), 'completed')
			turn_on_options(['doctrina2'])
		'ayuda':
			yield(E.run([
				'Peron: No se lo que es un celular, ni tampoco una SUBE. Dinero no manejo. En realidad, desde que no tengo manos, pocas cosas guardo.',
				'Peron: Ah...de hecho, justamente, hablando de cosas inservibles desde que me he quedado doblemente manco, tengo estos guantes, espero sepa darle un buen uso, compañero',
				'Player: Estem...no es lo que esperaba, pero todo sirve.',
				I.add_item('Guantes'),
				opt.turn_off()
			]), 'completed')
		'doctrina2':
			yield(E.run([
				'Peron: No existe para el peronismo más que una clase de personas: las que trabajan por la grandeza de la patria y la caída de los falsos "conductores" y clonadores seriales.',
				'Player: Ok, creo que se a quién se refiere con lo de "conductor"',
				'Peron: En la nueva Argentina de Perón, el trabajo es un derecho que crea la dignidad del hombre, no del clonado. Los clonados y clonadores no tienen lugar en nuestro suelo.',
				'Player: Bien, me gusta hacia donde va esto.',
				'Peron: Para un argentino no hay nada mejor que otro argentino. Todo aquel que se enbandere en falsos provincialismos que niegan a la nación, que nos engloba y une, no pueden ser considerados argentinos.',
				'Player: ¡Ese palo no fue para mi rancho!',
				'Peron: Ningún peronista debe sentirse más de lo que es ni menos de lo que debe ser, a menos que enfrente tenga a un clonado, que por definición, no es nada y no vale un pingo.',
				'Player: jejeje',
				'Peron: La escala de valores peronista es la siguiente: primero la patria, después el movimiento, luego los hombre y finalmente, a las fuerzas del cielo las bajaremos a los tiros',
				'Player: Me gusta cómo se va poniendo esto.',
				'Peron: ¡Sea paciente compañero, la única verdad es la realidad! Usted pidió consejo, entonces, ¿quiere que continue?',
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
				'Peron: Ya llegaremos a la gran verdad, espere, ¿o acaso nunca jugo una aventura gráfica?',
				'Player: Si, tiener razón mi general',
				'Peron: El peronismo anhela la UNIDAD NACIONAL y no los PROVINCIALISMOS BERRETAS. Ni cordobesistas ni misioneristas, ARGENTINOS de buena ley.',
				'Player: Je, ¿a quién le hablará el general, no?',
				'Peron: El justicialismo es una filosofía de vida, simple, popular, práctica, humanista y profundamente anti oscuranista y mesianica.',
				'Peron: En esta tierra, lo mejor que tenemos, es el pueblo.',
				'Peron: Del cielo solo cae la lluvia que riega nuestros campos y da vida a nuestra tierra. La única fuerza del cielo que existe son las fuerzas elementales de la naturaleza. Al resto, las rechazamos, como sea.',
				'Peron: Estas son las 20 verdades peronistas, he dicho.',
				'Player: (Mmmm, a mi me parece que dijo menos. Ups, ¿esto lo dije o lo pensé?)',
				'Peron: Lo pensaste. Pero no te preocupes. Tengo la última verdad, la que te ayudará en este travesía, ¿estás dispuesto a oirla, compañero?',
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
				'Peron: ¡Compañero! La útlima Gran Verdad, la que te ayudará en este camino, en esta indómita travesía de reclamos contra el ajustador serial en el que se transformó el gobierno provincial de Misiones es...',
				'Peron: Si alguna vez de llover tu quiere hacer, a rabdomantes y bailarines no debes creer...',
				'Peron: Lavando un auto un dia soleado alcanza para a la lluvia atraer.',
				'Player: Ok...estoy más confundido que antes pero me guardo este consejo.',
			opt.turn_off()
			]), 'completed')
			Globals.dialog_verdad_peronista_done = true
				
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
