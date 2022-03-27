extends Sprite

var pos = 0
const TIME_BETWEEN_TRANSITION = 0.5
const TRANSITION_TIME = 0.5
onready var fim = preload("res://fim_single.tscn")

func _ready():
	self.set_position(self.get_parent().get_node("Casas/Area2D"+str(pos)+"/CollisionShape2D").position)

func _on_Button_mudar_posicao(acao, posi):
	#desativando o botao jogar dados
	self.get_parent().get_node("Button").disabled = true
	
	#verificacoes
	if ((self.pos + posi) >= 30) && (acao == "avancar"): posi = 30 - self.pos
	if((self.pos - posi) <= 0) && (acao == "voltar"): posi = 0
	
	for i in range(posi):
		if acao == "avancar": pos+=1
		elif acao == "voltar": pos-=1
		
		var initial_pos = self.position
		var final_pos = self.get_parent().get_node("Casas/Area2D"+str(pos)+"/CollisionShape2D").position
		var tween = get_parent().get_node("Tween")
		tween.interpolate_property(self, "position", initial_pos, final_pos, TRANSITION_TIME, Tween.TRANS_CUBIC, Tween.EASE_IN_OUT)
		tween.start()
		yield(get_tree().create_timer(TIME_BETWEEN_TRANSITION), "timeout")
	
	
	if pos >= 30: get_tree().change_scene("res://fim_single.tscn")
	
	#ativando novamente
	self.get_parent().get_node("Button").disabled = false
