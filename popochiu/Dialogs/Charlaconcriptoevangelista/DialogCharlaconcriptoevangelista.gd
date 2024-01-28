tool
extends PopochiuDialog


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
func on_start() -> void:
	# One can put here something to excecute before showing the dialog options.
	# E.g. Make the PC to look at the character which it will talk to, walk to
	# it, and say something (or make the character say something)
	# (!) It MUST always use a yield
	yield(E.run([
		'Player: ¿Hola...',
		'Criptoevangelista: ¡Hola, hermano!'
	]), 'completed')
#	if I.AnuncioMamonMusk.in_inventory and !I.TarjetaMamonMusk.in_inventory:
#		turn_on_options(['MamonMusk'])
#	if I.TarjetaMamonMusk.in_inventory:
#		turn_on_options(['SubeMamonMusk'])
#		turn_off_options(['MamonMusk'])



func option_selected(opt: PopochiuDialogOption) -> void:
	# You can make the player character say the selected option with:

	
	# Use match to check which option was selected and excecute something for
	# each one
	match opt.id:
			'Necesito-dinero':
				yield(E.run([
			'Criptoevangelista: Hermano, creo que estamos invirtiendo los roles, generalmente soy yo quien pide dinero, pero cuentame, ¿cómo es eso que necesitas dinero?',
			'Player: Debo ir a la Plaza 9 de Julio a una asamblea docente, no sé si sabía usted que el gobierno provincial le ha descontado un 30% del sueldo a los docentes.',
			'Criptoevangelista: ¡Lo bien que hizo! Me apeno que no le hayan recortado aún más. Los docentes son Agentes del Maligno en la Tierra.',
				]), 'completed')
				opt.turn_off()
			'como':
				yield(E.run([
				'Criptoevangelista: Muy fácil, hermano. Podes pagar el colectivo en efectivo y son 330$.',
				'Player: Uff...¿efectivo? ¿Y siquiero pagar con el celular?',
				'Criptoevangelista: Bueno en ese caso con la aplicación de Casimiro.',
				'Player: De todas maneras mi celular está sin carga.'
				]), 'completed')
				opt.turn_off()
			'Templo':
				yield(E.run([
			'Criptoevangelista: ¿Laosianos? ¡Bah, esas herejías zurdoempobrecedoras y de bajo poder de procesamiento no son aceptadas en la Nueva Argentina de las Fuerzas del Criptocielo!',
			'Player: ¿Fuerzas del criptocielo?',
			'Criptoevangelista: ¡Pero en qué tarjeta gráfica de bajo cómputo estuviste viviendo en estos tiempos!¡Seguro sos un zurdo empobrecedor de Monero o alguna cripto de bajo consumo!',
				]), 'completed')
				opt.turn_off()
				turn_on_options(['bajoconsumo','vidaaustera'])
			'bajoconsumo':
				yield(E.run([
				'Criptoevangelista: Estamos próximos a desmontar este engendro de la herejía empobrecedora. Necesitamos más energía para que nuestros feligreces depositen el diezmo en la blockchain',
				'Player: ¿Pero sus feligreses tienen computadoras y conexión de Internet para darles el criptodiezmo?',
				'Criptoevangelista: Bueno, ese es otro paso. Está por llegar Mamon Musk para ofrecernos sátelites de punta, que apuntando hacia Anillaco, harán un enlace hacia la estratosfera, pudiendo así en tan solo una hora y media descargar 10 mb/s',
				'Player: ¿Mamón Musk? ¿Es un productor de cítricos misioneros?',
				'Player: Además no suena muy veloz y quemar carbón no está para nada bien, menos si es para dejar diezmo en la blockchain.',
				'Criptoevangelista: ¡Zurdoempobrecedor!',
				]), 'completed')
				stop()
				Globals.charlacriptoevangelista = true
#				opt.turn_off()
#				if I.AnuncioMamonMusk.in_inventory and !I.TarjetaMamonMusk.in_inventory:
#					turn_on_options(['MamonMusk'])
#				if I.TarjetaMamonMusk.in_inventory:
#					turn_on_options(['SubeMamonMusk'])
#					turn_off_options(['MamonMusk'])
			'vidaaustera':
				yield(E.run([
				'Criptoevangelista: Eso no suena muy inteligente, más bien parece la falacia Ad Pobrenium, o sea, digamos, que ser pobre es ser mejor',
				'Player: Esa falacia no existe',
				'Criptoevangelista: ¿Cómo que no? Si la vi en un video de TipitoEnojado',
				]), 'completed')
				stop()
#				opt.turn_off()
#			'MamonMusk':
#				yield(E.run([
#				'Criptoevangelista: Bah, ese anuncio es truchisimo, no me vas a hacer caer en esa truchada.',
#				'Criptoevangelista: Los verdaderos traders de MamonMusk tienen tarjetas oficiales de inversión',
#				]), 'completed')
#				opt.turn_off()
#				return
##				if I.TarjetaMamonMusk.in_inventory:
##					turn_on_options(['SubeMamonMusk'])
#			'SubeMamonMusk':
#				yield(E.run([
#				'Criptoevangelista: OH POR FAVOR, HABERLO DICHO ANTES, HERMANO',
#				'Criptoevangelista: No es que tenga mucho metálico ahora, el enlace del cripto diezmo todavía esta en viaje',
#				'Criptoevangelista: Pero tome, hermano, todo sea por ser parte de las fuerzas del CriptoMamon',
#				I.remove_item('TarjetaMamonMusk'),
#				I.add_item('250Pesos'),
#				'Player: Jeje que manera de cazar giles',
#				'Criptoevangelista: ¿Qué dijiste hermano?',
#				'Player: Que ya llegó mi primo de San Andres de Giles.',
#				]), 'completed')
#				opt.turn_off()
			'Adios':
				stop()
				return
	
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
