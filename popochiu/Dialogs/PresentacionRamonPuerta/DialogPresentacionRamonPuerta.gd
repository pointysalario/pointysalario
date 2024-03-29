tool
extends PopochiuDialog


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
func on_start() -> void:
	yield(E.run([
		'Player: ¡¿Ramón Puerta?!',
		'RamonPuerta: ¡Señor expresidente Puerta!',
	]), 'completed')



func option_selected(opt: PopochiuDialogOption) -> void:
	# You can make the player character say the selected option with:
#	yield(D.say_selected(), 'completed')
	
	# Use match to check which option was selected and excecute something for
	# each one
	match opt.id:
		'muerto':
			yield(E.run([
				'Player: ¿Pero...usted no estaba muerto?',
				"RamonPuerta: We, debo ser el único personaje no muerto de este juego.",
				'Player: ¿Está usted seguro?',
				'RamonPuerta: Pero claro, gurí, usted es muy joven y no conoce el apellido Puerta.',
				'Player: ¿El puerta de las fuerzas del cielo?',
				'RamonPuerta: Guaú, que va a ser, es un pariente muy lejano, no tengo que ver con ese Puerta.',
				'Player: Entonces, ¿el Puerta de los yerbatales denunciados por trabajo esclavo?',
				'RamonPuerta: No,no, ese tampoco, o bueno capaz nomás pero capaz no, pero tengo un tio que fabrica ventanas.',
			opt.turn_off()
			]), 'completed')
			
		'donde':
			yield(E.run([
				'Player: ¿Me puede decir donde estamos? ¡Yo necesito ir al centro!',
				'RamonPuerta: ¡Pero gurí! ¿Usted decidió hacer el viaje con cucumelo antes que esperar un colectivo de Casimiro, no?',
				'Player: Si, eso creo...',
				'RamonPuerta: Y bueno chamigo, hubiera esperado la pésima frecuencia y los 55º arriba de esos colectivos. Ahora aguántese.',
				'Player: ¿Que me aguante qué?',
				'RamonPuerta: Guaú que no te lo buscaste.',
				'RamonPuerta: ¿Querías viajar al centro de otra manera? Tranquilo chamigo, que vas a llegar.',
			opt.turn_off()
			]), 'completed')
			turn_on_options(['buscaste'])
		'buscaste':
			yield(E.run([
				'Player: Pero esto parece una joda, ¿hay que comerse un hongo y hablar con Ramon Puerta para llegar al centro?',
				'RamonPuerta: Esto es así gurí, con Casimiro no se jode guaú.',
				'Player: ¿Qué significa eso?',
				'RamonPuerta: Guaú:Del guaraní guau ("falso").',
				'RamonPuerta: Adjetivo indeclinable. Falso, de mentira.',
				'Player: Mmmmm',
			opt.turn_off()
			]), 'completed')
		'triciclo':
			yield(E.run([
				'Player: ¿Qué le pasó a su rostro? ¿Por qué el triciclo?',
				'RamonPuerta: ¿Es que todavía no lo entendes? ¡Juipitaura!',
				'RamonPuerta: La historia es una pesadilla de la que no podemos despertar, ¿sabes?',
				'Player: ¡Pero yo nunca me dormí!',
				'RamonPuerta: Eso es lo que crees. ¿No ves, ahí al fondo, en el centro del espiral, la Carpa de los Docentes levantándose?',
				opt.turn_off()
			]), 'completed')
			turn_on_options(['carpadocente','conflicto'])
		'carpadocente':
			yield(
				E.run([ 
					'Player: Si, eso parece, pero...no sé, esto es muy... hipnótico',
					'RamonPuerta: ¡Pero claro que es hipnótico! Así es cómo funciona todo esto, gurí, ¿no lo ves todavía?',
					'Player: Si, mientras más miro creo que más cosas veo.',
					'RamonPuerta: Es una vuelta de tuerca, gurí.',
					'RamonPuerta: De la carpa docente sale todo. Las provincias pidiéndole plata al estado nacional para pagar sueldos.',
					'RamonPuerta: Misiones no podía financiar la educación. El traspaso de la Reforma fue ruin.',
					'Player: ¡Y ustedes más ruines!',
					'RamonPuerta: ¿Y pero por qué te pensas que estoy aquí, arriba un triciclo y no haciendo chistes como Tangalanga?',
					'RamonPuerta: Cómo sea, mis pichones siguen ahí, ahora solamente tienen más convicciones para el ajuste.',
					'RamonPuerta: ¿La ves ahora?',
					'Player: Sí...creo que sí. De todas maneras, me voy para allá. En la Carpa seguro esta mi prima.',
					opt.turn_off()
			]), 'completed')
			stop()
			E.goto_room('Final')
			
		'conflicto':
			yield(E.run([
				'Player: ¿Qué sabe del conflicto docente?',
				'RamonPuerta: Lo que sabe todo el mundo, que el gobierno judea a los docentes.',
				'Player: Eso no me dice mucho.',
				'RamonPuerta: Mirá, gurí, acá las cosas son simples. Yo he entablado un dogma, el verdadero dogma "misionerista".',
				'RamonPuerta: Mucho antes que mi pichoncito remonte solo, yo lo fui orientando en las verdades puertistas.',
				'RamonPuerta: Y hay una muy clara, concisa, que yo instauré y define toda esta situación:',
				'RamonPuerta: Si a Misiones le va bien, es gracias a la provincia, y si a Misiones le va mal, es culpa de la nación.',
				opt.turn_off()
			]), 'completed')
			turn_on_options(['dogma'])
		'dogma':
			yield(E.run([
				'Player: ¿Dogma? ¿Misionerismo? ¿Qué tiene que ver con los salarios de miseria de los docentes?',
				'RamonPuerta: El misionerismo es el respeto irrestricto del proyecto de la casta provincial...',
				'RamonPuerta: basado en el PRINCIPIO GENERACIÓN DE HUMO y en defensa de los intereses de los capangas de estancia.',
				'Player: Creo que entiendo. Entonces, a la casta la educación la tiene sin cuidado.',
				'RamonPuerta: Pero gurí, si ellos aprendieron muy bien de mi, ¿no sabías que fueron alumnos míos?',
				
				opt.turn_off()
			]), 'completed')
			turn_on_options(['alumnos'])
		'alumnos':
			yield(E.run([
				'Player: ¿Cómo que alumnos?',
				'RamonPuerta: Me parece que a vos te falta un poco de lo que en Misiones llamamos "Eduación Disruptiva"',
				'Player: ¡Disruptivo es poder vivir con 165 mil pesos de sueldo!',
				
				opt.turn_off()
			]), 'completed')
		'adios':
			yield(E.run([
				]), 'completed')
			
			
				
#			stop()
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
