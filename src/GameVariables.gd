extends Node

const SINGLE_PLAYER := "singleplayer"
const MULTIPLAYER := "multiplayer"
const MAX_DICE := 6

var game_mode = null
var players_name: PoolStringArray = []
var acertos := 0
var erros := 0

onready var a := preload("res://perguntas.gd").new()
onready var b := preload("res://dificuldades.gd").new()
var perguntas
var dificuldade

func _ready():
	#perguntas = JSON.parse(load_file("res://etc/perguntas.json")).result
	#dificuldade = JSON.parse(load_file("res://etc/dificuldade.json")).result
	perguntas = JSON.print(a.perguntas)
	perguntas = JSON.parse(perguntas).result
	dificuldade = JSON.print(b.dificuldade)
	dificuldade = JSON.parse(dificuldade).result
	
	if (perguntas == null) or (dificuldade == null):
		var instance = preload("res://startup_error.tscn").instance()
		get_parent().get_node("Control").queue_free()
		call_deferred("add_child", instance)
	pass

func load_file(path):
	var file = File.new()
	file.open(path, File.READ)
	var content = file.get_as_text()
	file.close()
	return content

