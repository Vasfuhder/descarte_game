extends Node

export var perguntas = {
	"0": {
		"pergunta": "Qual é a forma correta de descartar os medicamentos?",
		"respostas": {
			"1": "Jogando no lixo comum",
			"2": "No vaso sanitário",
			"3": "Em pontos de coleta adequado"
		},
		"correta": "3",
		"dificuldade": "1"
	},
	"1": {
		"pergunta": "Antes de começar a usar o medicamento, você precisa?",
		"respostas": {
			"1": "Ler a bula",
			"2": "Perguntar para a parentes ou amigo",
			"3": "Pesquisar na internet"
		},
		"correta": "1",
		"dificuldade": "1"
	},
	"2": {
		"pergunta": "É recomendado utilizar medicamentos por indicação:",
		"respostas": {
			"1": "Profissional de saúde",
			"2": "Familiares e vizinhos",
			"3": "Da redes sociais"
		},
		"correta": "1",
		"dificuldade": "1"
	},
	"3": {
		"pergunta": "Ao pegar um medicamento guardado por muito tempo e perceber que o medicamento possui um odor diferente, mesmo estando no prazo de validade você deve:",
		"respostas": {
			"1": "Descartar",
			"2": "Continuar consumindo os medicamentos",
			"3": "Doar para o vizinho ou parente"
		},
		"correta": "1",
		"dificuldade": "1"
	},
	"4": {
		"pergunta": "Porque não devo tomar medicamentos vencidos?",
		"respostas": {
			"1": "Porque perdem a eficácia e podem fazer mal",
			"2": "Pode causar obesidade e faz mal",
			"3": "Da insônia e faz mal"
		},
		"correta": "1",
		"dificuldade": "2"
	},
	"5": {
		"pergunta": "Os medicamentos devem ser descartados em pontos de coleta específico?",
		"respostas": {
			"1": "Sim",
			"2": "Não",
			"3": "As vezes"
		},
		"correta": "1",
		"dificuldade": "2"
	},
	"6": {
		"pergunta": "Onde seria o armazenamento correto do medicamento:",
		"respostas": {
			"1": "Banheiro",
			"2": "Locais úmidos",
			"3": "Locais apropriados segundo a bula"
		},
		"correta": "3",
		"dificuldade": "2"
	},
	"7": {
		"pergunta": "É correto utilizar o vidro de algum medicamento para outra finalidade?",
		"respostas": {
			"1": "Depende",
			"2": "Não",
			"3": "Claro que sim, não tem problema"
		},
		"correta": "2",
		"dificuldade": "2"
	},
	"8": {
		"pergunta": "Ao ver que sobrou medicamento na cartela ou no frasco após o término do tratamento, o correto a se fazer com o medicamento, seria?",
		"respostas": {
			"1": "Descartar em pontos específicos",
			"2": "Jogar no lixo",
			"3": "Guardar para reutilizar"
		},
		"correta": "1",
		"dificuldade": "3"
	},
	"9": {
		"pergunta": "A bula serve para quê?",
		"respostas": {
			"1": "Orientações seguras sobre o uso do medicamento",
			"2": "Proteger o medicamento",
			"3": "Apenas orientações sobre o armazenamento do medicamento"
		},
		"correta": "1",
		"dificuldade": "3"
	},
	"10": {
		"pergunta": "Os medicamentos devem ser consumidos depois do prazo de validade?",
		"respostas": {
			"1": "Sim",
			"2": "Não"
		},
		"correta": "2",
		"dificuldade": "1"
	},
	"11": {
		"pergunta": "O descarte incorreto de medicamentos em lixo comum pode afetar animais e pessoas?",
		"respostas": {
			"1": "Sim",
			"2": "Não"
		},
		"correta": "1",
		"dificuldade": "1"
	},
	"12": {
		"pergunta": "É necessário verificar a data de validade dos medicamentos?",
		"respostas": {
			"1": "Sim",
			"2": "Não"
		},
		"correta": "1",
		"dificuldade": "1"
	},
	"13": {
		"pergunta": "Os medicamentos podem ser descartados na pia e no vaso?",
		"respostas": {
			"1": "Sim",
			"2": "Não"
		},
		"correta": "1",
		"dificuldade": "1"
	},
	"14": {
		"pergunta": "É correto parar o tratamento por conta própria?",
		"respostas": {
			"1": "Sim",
			"2": "Não"
		},
		"correta": "2",
		"dificuldade": "1"
	},
	"15": {
		"pergunta": "Os medicamentos podem ser usados na prevenção e no tratamento de doenças, quando prescrito pelo médico?",
		"respostas": {
			"1": "Sim",
			"2": "Não"
		},
		"correta": "1",
		"dificuldade": "2"
	},
	"16": {
		"pergunta": "Os medicamentos descartados incorretamente causam danos ao meio ambiente?",
		"respostas": {
			"1": "Sim",
			"2": "Não"
		},
		"correta": "2",
		"dificuldade": "2"
	},
	"17": {
		"pergunta": "É correto descartar qualquer tipo de medicamento no ponto de coleta?",
		"respostas": {
			"1": "Sim",
			"2": "Não"
		},
		"correta": "2",
		"dificuldade": "2"
	},
	"18": {
		"pergunta": "É correto reutilizar as embalagens primárias dos medicamentos (ex: blister, ampola, frasco)?",
		"respostas": {
			"1": "Sim",
			"2": "Não"
		},
		"correta": "2",
		"dificuldade": "2"
	},
	"19": {
		"pergunta": "As embalagens secundárias (ex: caixa de papelão que envolve o medicamento) podem ser descartadas no lixo comum?",
		"respostas": {
			"1": "Sim",
			"2": "Não"
		},
		"correta": "2",
		"dificuldade": "2"
	},
	"20": {
		"pergunta": "É correto reutilizar embalagens secundárias dos medicamentos (ex: caixa de papelão que envolve o medicamento)?",
		"respostas": {
			"1": "Sim",
			"2": "Não"
		},
		"correta": "1",
		"dificuldade": "2"
	},
	"21": {
		"pergunta": "Existem medicamentos que podem ser vendidos sem receita?",
		"respostas": {
			"1": "Sim",
			"2": "Não"
		},
		"correta": "1",
		"dificuldade": "3"
	},
	"22": {
		"pergunta": "É correto cortar ao meio qualquer tipo de comprimido?",
		"respostas": {
			"1": "Sim",
			"2": "Não"
		},
		"correta": "1",
		"dificuldade": "3"
	},
	"23": {
		"pergunta": "É correto alterar as doses diárias dos medicamentos recomendados?",
		"respostas": {
			"1": "Sim",
			"2": "Não"
		},
		"correta": "2",
		"dificuldade": "3"
	},
	"24": {
		"pergunta": "Apesar do descarte ser de responsabilidade do fabricante, o consumidor também tem responsabilidade no descarte correto?",
		"respostas": {
			"1": "Sim",
			"2": "Não"
		},
		"correta": "1",
		"dificuldade": "3"
	},
	"25": {
		"pergunta": "É correto comprar medicamentos por indicação de amigos.",
		"respostas": {
			"1": "Verdadeiro",
			"2": "Falso"
		},
		"correta": "2",
		"dificuldade": "1"
	},
	"26": {
		"pergunta": "Descartar medicamentos em lixos domésticos é uma atitude muito adequada para a proteção do meio ambiente.",
		"respostas": {
			"1": "Verdadeiro",
			"2": "Falso"
		},
		"correta": "2",
		"dificuldade": "1"
	},
	"27": {
		"pergunta": "O uso adequado de medicamentos acontece quando os pacientes recebem os medicamentos apropriados por indicação do profissional de saúde.",
		"respostas": {
			"1": "Verdadeiro",
			"2": "Falso"
		},
		"correta": "1",
		"dificuldade": "1"
	},
	"28": {
		"pergunta": "Medicamentos e álcool são uma combinação que merece atenção, e deve ser evitada.",
		"respostas": {
			"1": "Verdadeiro",
			"2": "Falso"
		},
		"correta": "1",
		"dificuldade": "1"
	},
	"29": {
		"pergunta": "É correto manter os medicamentos em local protegido, sendo o mais recomendado guardar na sua própria embalagem juntamente com a bula.",
		"respostas": {
			"1": "Verdadeiro",
			"2": "Falso"
		},
		"correta": "1",
		"dificuldade": "2"
	},
	"30": {
		"pergunta": "Se eu abrir bem a torneira e deixar escorrer bastante água não tem problema de descartar o xarope na pia.",
		"respostas": {
			"1": "Verdadeiro",
			"2": "Falso"
		},
		"correta": "2",
		"dificuldade": "2"
	},
	"31": {
		"pergunta": "Medicamentos precisam de cuidados especiais para seu descarte. Sendo assim, é correto descarta-los no quintal de casa.",
		"respostas": {
			"1": "Verdadeiro",
			"2": "Falso"
		},
		"correta": "2",
		"dificuldade": "2"
	},
	"32": {
		"pergunta": "Descartar medicamentos vencidos corretamente reduz o risco a saúde.",
		"respostas": {
			"1": "Verdadeiro",
			"2": "Falso"
		},
		"correta": "1",
		"dificuldade": "2"
	},
	"33": {
		"pergunta": "A utilização dos medicamentos deve ser sempre feita com orientação de um profissional de saúde especializado, já que o uso incorreto pode trazer sérios danos à saúde.",
		"respostas": {
			"1": "Verdadeiro",
			"2": "Falso"
		},
		"correta": "1",
		"dificuldade": "2"
	},
	"34": {
		"pergunta": "Não compre ou aceite medicamentos que estejam com a embalagem aberta, com o lacre rompido, com o rótulo borrado ou apagado.",
		"respostas": {
			"1": "Verdadeiro",
			"2": "Falso"
		},
		"correta": "1",
		"dificuldade": "2"
	},
	"35": {
		"pergunta": "Os resíduos de medicamentos têm seu destino final na incineração ou são levados para os aterros industriais, dependendo do procedimento adotado em cada município relativo a destinação dos resíduos sólidos de saúde.",
		"respostas": {
			"1": "Verdadeiro",
			"2": "Falso"
		},
		"correta": "1",
		"dificuldade": "3"
	},
	"36": {
		"pergunta": "Despejar medicamentos líquidos no ralo ou em vasos sanitários pode contaminar o solo e as águas, mesmo nas cidades que contêm usinas de tratamentos.",
		"respostas": {
			"1": "Verdadeiro",
			"2": "Falso"
		},
		"correta": "1",
		"dificuldade": "3"
	},
	"37": {
		"pergunta": "Um Aterro Sanitário é um local no qual despejam-se os resíduos sólidos descartados pelo homem, esses são provenientes de residências, indústrias e hospitais",
		"respostas": {
			"1": "Verdadeiro",
			"2": "Falso"
		},
		"correta": "1",
		"dificuldade": "3"
	},
	"38": {
		"pergunta": "A implementação do aterro sanitário objetiva diminuir o impacto do lixo no mundo, sobretudo da contaminação do solo, água e ar.",
		"respostas": {
			"1": "Verdadeiro",
			"2": "Falso"
		},
		"correta": "1",
		"dificuldade": "3"
	},
	"39": {
		"pergunta": "Se um medicamento foi bom para o meu familiar eu posso tomar também, desde que tenha os mesmos sintomas.",
		"respostas": {
			"1": "Verdadeiro",
			"2": "Falso"
		},
		"correta": "2",
		"dificuldade": "3"
	}
}
