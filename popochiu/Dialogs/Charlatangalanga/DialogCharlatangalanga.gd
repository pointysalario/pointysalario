tool
extends PopochiuDialog


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░

func on_start() -> void:
	yield(E.run([
		'Player: ¿Dr. Tangalanga, es usted?',
		'Tangalanga: Pero oíme alcahuete, ¿quién va a ser sino?',
	]), 'completed')
	if I.Espejaime.in_inventory:
			turn_on_options(['espejaime'])
	


func option_selected(opt: PopochiuDialogOption) -> void:
	# You can make the player character say the selected option with:
#	yield(D.say_selected(), 'completed')
	
	# Use match to check which option was selected and excecute something for
	# each one
	match opt.id:
		'estanmuertos':
			yield(E.run([
				'Player:¿El cucumelo me mató? ¿O no paro de encontrarme con muertos?',
				'Tangalanga: Para qué mierda te habras comido esa porquería.',
				'Tangalanga: Igual no se hasta qué punto no te chifla el ortho desde el principio',
				'Player: Cada vez entiendo menos',
				'Player: Igual, no se haga el gracioso, Dr, que acá no es tan popular.',
				'Tangalanga: ¿En qué sentido me lo dice?',
				]), 'completed')
		'docentes':
			yield(E.run([
				'Player: Dr, está usted al tanto del reclamo salarial docente?',
				'Tangalanga: Yo le cuento lo que se de la cuestión.',
				'Tangalanga: Una vez un primo mio me dijo que escuchó a un ex ministro de educación de Misiones decir:',
				'Tangalanga: "Si las maestras no llegan a fin de mes, que se busquen un compañero para parar la olla."',
				'Player: Eso sueno posible pero siento en su voz un ligero tono como de...chantapufi.',
				'Tangalanga: ¿Cómo mierda te lo tengo qué decir?',
				'Tangalanga: Oíme, te cuento un versito que me dijo el actual gobernador, una vez que me lo crucé en una casa de masajes:',
				'Tangalanga:"Cada vez que consideren que su sueldo es muy ingrato..."',
				'Tangalanga:"Metanse un dedo en el orto y dejenlo estar un rato."',
				'Player: ¡Usted me está faltando el respeto!',
				'Tangalanga: No se haga el boludo, usted sabe bien de quién hablo.'
				
			]), 'completed')
		'delcielo':
			yield(E.run([
				'Player: Dr., ¿qué opina de las fuerzas del cielo?',
				'Tangalanga: Oíme una cosa, cómo mierda te lo tengo qué decir.',
				'Tangalanga: Justamente estamos organizando un banquete con un primo...',
				'Tangalanga: Él invitó a una señora, de rasgos... cómo decirlo, como de re boluda.',
				'Tangalanga: Y resulta que era una muchacha llamada Limones.',
				'Player: ¿Puede redondear, Dr.?',
				'Tangalanga: ¡Pero la puta que te pario cómo me faltas así el respeto, ponete de perfil...',
				'Tangalanga: ¿No ves que te chifla el ortho?',
				]), 'completed')
		'espejaime':
			yield(E.run([
				'Player: Dr., encontré un espejaime, ¿le sirve a usted?',
				'Tangalanga: ¡Lo estaba buscando hace años!',
				'Tangalanga: Mirá, hoy estoy en modo alcahuete y quiero laburar.',
				'Tangalanga: Te puedo llevar al centro de Posadas pero solo conozco estas direcciones:',
				'Tangalanga: Malabia 1614, 2do patio del lado de la sombra.',
				'Tangalanga: Ecuador 432.',
				'Tangalanga: Cochabamba al tresmil setecientos y monedas.',
				'Tangalanga: Junin y Santa Fe pero del lado de canto.',
				'Tangalanga: Venezuela y Chile.',
			]), 'completed')
			opt.turn_off()
			turn_off_options(['estanmuertos','docentes','delcielo','adios'])
			turn_on_options(['malabia','ecuador','junin','cochabamba','venezuela'])
		'ecuador':
			yield(E.run([
				'Player: Ecuador 747.',
				'Tangalanga: Mmmm, no, eso está a más de 1000km, no seas alcahuete no me hagas laburar tanto.'
			]), 'completed')
			opt.turn_off()
		'malabia':
			yield(E.run([
				'Player: Malabia 1614 segundo patio del lado de la sombra.',
				'Tangalanga: Mmmm, no, eso está a más de 1000km, no seas alcahuete no me hagas laburar tanto.'
				]), 'completed')
			opt.turn_off()
		'junin':
			yield(E.run([
				'Player: Junín y Santa Fe.',
				'Tangalanga: Ahh, esa calle me suena.',
				'Player: ¿Campana te suena?'
				]), 'completed')
			stop()
			E.goto_room('Onirico', 2)
			opt.turn_off()
		'cochabamba':
			yield(E.run([
				'Player: Cochabamba al tresmil setecientos y monedas.',
				'Tangalanga: Mmmm, no, eso está a más de 1000km, no seas alcahuete no me hagas laburar tanto.'
				]), 'completed')
			opt.turn_off()
		'venezuela':
			yield(E.run([
				'Player: Venuezuela y Chile.',
				'Tangalanga: Mmmm, no, eso está a más de 1000km, no seas alcahuete no me hagas laburar tanto.'
				]), 'completed')
			opt.turn_off()
		'adios':
			yield(E.run([
				'Player: Este...quiero ver un poco qué tal todo.',
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
