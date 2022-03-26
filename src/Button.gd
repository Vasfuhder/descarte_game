extends Button

var rng = RandomNumberGenerator.new()
onready var pergunta_scene = preload("res://pergunta.tscn")
onready var resultado_scene = preload("res://resultado.tscn")
var perguntas: Array

onready var acertos = 0
onready var erros = 0

func _ready():
	preparar_perguntas()
	rng.randomize()
	self.connect("pressed", self, "_button_pressed")
	pass

func preparar_perguntas():
	for v in GameVariables.perguntas.values():
		perguntas.append(v)
	perguntas.shuffle()

func penalizar(voltar):
	var position = self.get_parent().get_node("player").pos
	position = position-voltar
	clamp(position, 0, 30)
	self.get_parent().get_node("player").pos = position
	pass

func _button_pressed() -> void:
	var valor_dado = int(rng.randf_range(1,GameVariables.MAX_DICE+1))
	#animação dos dados sendo lançados
	jogar_dados(valor_dado)
	
	#pergunta aleatoria
	gerar_pergunta(valor_dado)
	pass

func jogar_dados(valor_dado: int):
	self.get_parent().get_node("dados").set_text("Dados: "+str(valor_dado))
	pass
	
func gerar_pergunta(valor_dado) -> void:
	if self.perguntas.size() <= 0: preparar_perguntas()
	var indice = rng.randi_range(0, perguntas.size()-1)
	var pergunta = self.perguntas[indice]
	self.perguntas.pop_at(indice)
	var instance = pergunta_scene.instance()
	instance.get_node("RichTextLabel").text = pergunta["pergunta"]
	
	for i in range(pergunta["respostas"].size()):
		var button = Button.new()
		button.text = pergunta["respostas"][str(i+1)]
		button.connect("pressed", self, "on_Button_pressed", [button.text, pergunta, valor_dado])
		instance.get_node("container").get_node("container").add_child(button)
		
	self.get_parent().get_parent().add_child(instance)
	
func on_Button_pressed(text, pergunta, valor_dado):
	self.get_parent().get_parent().get_node("Pergunta").queue_free()
	var instance = resultado_scene.instance()
	var resposta: RichTextLabel = instance.get_node("RichTextLabel")
	resposta.push_align(resposta.ALIGN_CENTER	)
	if text == pergunta["respostas"][pergunta["correta"]]:
		var avancando = "Avançando "+str(valor_dado)+" casas." if (valor_dado > 1) else "Avançando "+str(valor_dado)+" casa"
		resposta.set_bbcode("[b][center]Resposta Correta!!\n"+avancando+"[/center][/b]")
		self.get_parent().get_parent().add_child(instance)
		yield(get_tree().create_timer(2), "timeout")
		self.get_parent().get_parent().get_node("Resultado").queue_free()
		self.get_parent().get_node("player").pos += valor_dado
		GameVariables.acertos += 1
	else:
		var gd = GameVariables.dificuldade[GameVariables.game_mode]
		var voltar = gd[gd.keys()[int(pergunta["dificuldade"])-1]]
		var voltando = "Voltando "+str(voltar)+" casas." if (voltar > 1) else "Voltando "+str(voltar)+" casa"
		resposta.set_bbcode("[b][center]Resposta Incorreta!!\n"+voltando+"[/center][/b]")
		self.get_parent().get_parent().add_child(instance)
		yield(get_tree().create_timer(2), "timeout")
		self.get_parent().get_parent().get_node("Resultado").queue_free()
		GameVariables.erros += 1
		penalizar(voltar)
		
