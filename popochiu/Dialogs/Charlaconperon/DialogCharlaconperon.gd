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
