extends TextureButton

func _pressed():
	GameVariables.game_mode = GameVariables.SINGLE_PLAYER
	get_tree().change_scene('res://game.tscn')
