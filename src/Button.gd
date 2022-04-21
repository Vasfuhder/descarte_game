extends Button

signal mudar_posicao

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

func _button_pressed() -> void:
	#desativando botão
	self.disabled = true
	
	var valor_dado = int(rng.randf_range(1,GameVariables.MAX_DICE+1))
	
	#animação dos dados sendo lançados e espera de 1 segundo antes da pergunta
	yield(jogar_dados(valor_dado), "completed")
	yield(get_tree().create_timer(1), "timeout")
	
	#pergunta aleatoria
	gerar_pergunta(valor_dado)

func gerar_animacao(frames: int):
	var gen_frames: Array = []
	var i = 0
	var limit = 7
	while i <= limit:
		var random = rng.randi_range(0, frames+1)
		if gen_frames.find(random) == -1:
			gen_frames.append(random)
			i += 1
	return gen_frames

func jogar_dados(valor_dado: int):
	var frame
	match valor_dado:
			1: frame = 49
			2: frame = 53
			3: frame = 113
			4: frame = 0
			5: frame = 61
			6: frame = 57

	var dado = self.get_parent().get_node("AnimatedSprite")
	var animacao = gerar_animacao(dado.frames.get_frame_count("default"))
	var tween = self.get_parent().get_node("Tween")
	var size_array = [0, 0.2, 0.5, 1.0, -1.0, -0.5, -0.2]
	for i in range(7):
		tween.interpolate_property(dado, "scale", dado.scale, Vector2(dado.scale.x+size_array[i], dado.scale.y+size_array[i]), 0.1, Tween.TRANS_ELASTIC, Tween.EASE_IN_OUT)
		tween.start()
		dado.frame = animacao[i]
		yield(get_tree().create_timer(0.07), "timeout")
	dado.frame = frame
	
	pass
	
func gerar_pergunta(valor_dado) -> void:
	if self.perguntas.size() <= 0: preparar_perguntas()
	var indice = rng.randi_range(0, perguntas.size()-1)
	var pergunta = self.perguntas[indice]
	self.perguntas.pop_at(indice)
	var instance = pergunta_scene.instance()
	instance.get_node("RichTextLabel").bbcode_enabled = true
	instance.get_node("RichTextLabel").bbcode_text = "[center]"+pergunta["pergunta"]+"[/center]"
	
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
		emit_signal("mudar_posicao", "avancar", valor_dado)
		GameVariables.acertos += 1
	else:
		var gd = GameVariables.dificuldade[GameVariables.game_mode]
		var voltar = gd[gd.keys()[int(pergunta["dificuldade"])-1]]
		var voltando = "Voltando "+str(voltar)+" casas." if (voltar > 1) else "Voltando "+str(voltar)+" casa"
		resposta.set_bbcode("[b][center]Resposta Incorreta!!\n"+voltando+"[/center][/b]")
		self.get_parent().get_parent().add_child(instance)
		yield(get_tree().create_timer(2), "timeout")
		self.get_parent().get_parent().get_node("Resultado").queue_free()
		emit_signal("mudar_posicao", "voltar", voltar)
		GameVariables.erros += 1
