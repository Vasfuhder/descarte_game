extends Control

onready var text = get_node("RichTextLabel2")

func _ready():
	text.set_bbcode("[b][center]Acertos: "+str(GameVariables.acertos)+" \nErros: "+str(GameVariables.erros)+"[/center][/b]")


func _on_Button_pressed():
	get_tree().change_scene("res://menu.tscn")
