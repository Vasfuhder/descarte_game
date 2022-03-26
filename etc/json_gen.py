import json

if __name__ == '__main__':
    perguntas = {}
    index = 0
    for i in range(10):
        a = input("\nPergunta " + str(i + 1) + ": ")
        b = {}
        for j in range(3):
            b[j+1] = input("Resposta " + str(j + 1) + ": ")

        c = input("Resposta correta: ")
        d = input("Dificuldade: ")

        perguntas.update({index: {'pergunta': a, 'respostas': b, 'correta': c, 'dificuldade': d}})
        index += 1

    for i in range(15):
        a = input("\nPergunta " + str(i + 11) + ": ")
        b = {1: "Sim", 2: "Não"}
        c = input("Resposta correta: ")
        d = input("Dificuldade: ")

        perguntas.update({index: {'pergunta': a, 'respostas': b, 'correta': c, 'dificuldade': d}})
        index += 1

    for i in range(15):
        a = input("\nPergunta " + str(i + 26) + ": ")
        b = {1: "Verdadeiro", 2: "Falso"}
        c = input("Resposta correta: ")
        d = input("Dificuldade: ")

        perguntas.update({index: {'pergunta': a, 'respostas': b, 'correta': c, 'dificuldade': d}})
        index += 1

    with open('perguntas.json', 'w', encoding='utf-8') as f:
        json.dump(perguntas, f, ensure_ascii=False, indent=4)
