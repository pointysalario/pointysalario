tool
extends PopochiuDialog


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
func on_start() -> void:
	yield(E.run([
		'Player: Emm...',
		'MonstruoRodridodeFilippi: ¡Fue lo mejor de... los métodos piqueteros!',
	]), 'completed')
	if Globals.lluvia == true:
		turn_on_options(['lluvia'])
	
func option_selected(opt: PopochiuDialogOption) -> void:
	yield(D.say_selected(), 'completed')
	
	# Use match to check which option was selected and excecute something for
	# each one
	match opt.id:
		'presentacion':
			yield(E.run([
				"MonstruoRodridodeFilippi: Qué pasa, ¿nunca viste un ser de tres cabezas? Ni que estuvieramos siendo originales",
				'Player: Sí, pero acá, en medio del monte de Itaembé Guazú. Es raro.',
				'MonstruoRodridodeFilippi: ¿Raro? Raro sería que pudieramos implementar que las tres cabezas hablen por si mismas',
				'MonstruoRodridodeFilippi: Mezclando ideas de Rodrigo y los Filippi...pero no nos da el tiempo ni la cabeza, valga la redundancia.',
				'Player: Menos mal.',
			opt.turn_off()
			]), 'completed')
#			stop()
		'quehacen':
			yield(E.run([
				'MonstruoRodridodeFilippi: Me parece que está más que claro.',
				'MonstruoRodridodeFilippi: Conseguimos pasajes, ya estamos en Misiones.',
				'MonstruoRodridodeFilippi: ¡Pero no quiere llover!',
				'MonstruoRodridodeFilippi: Que cucu, que cucu, ¡que cucumelo!',
				'MonstruoRodridodeFilippi: ¡Ojalá que llueva!',
			]), 'completed')
			Globals.dialog_cucumelo_lluvia_done = true
#			if Globals.lluvia == true:
#				turn_on_options(['lluvia'])
		'lluvia':
			yield(E.run([
				'MonstruoRodridodeFilippi: ¡Si! Que llueva, que llueva, que crezca el cucumelo',
				'MonstruoRodridodeFilippi: ¡Y creció!',
				'MonstruoRodridodeFilippi: Tomá, ya que hiciste llover, esto es para vos, que cucu que cucu que cucumelo!',
				I.add_item('Cucumelo'),
				]), 'completed')
		'adios':
			yield(E.run([
				'MonstruoRodridodeFilippi: ¡QUE CUCU, QUE CUCU, QUE CUCUMELO!'
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
