import random
import time

cargos = ['UX', 'DEV', 'GER', 'CEO', 'TW']
senioridades = ['JR', 'PL', 'SR']
registros = []

def gerar_registros():
    for _ in range(40000):
        id = _ + 1
        nome = f"Funcionario_{id}"
        cargo = random.choice(cargos)
        salario = round(random.uniform(3000, 15000), 2)
        tempo_de_casa = random.randint(1, 10)
        senioridade = random.choice(senioridades)
        registros.append((id, nome, cargo, salario, tempo_de_casa, senioridade))

def calcular_custo_de_folha():
    custo_total = sum(registro[3] for registro in registros)
    print(f"Custo total da folha de pagamento: R${custo_total:.2f}")

def layoff():
    global registros
    registros = registros[:-12000]

def main():
    start_time = time.time()
    gerar_registros()
    print(f"Tempo para gerar registros: {time.time() - start_time:.4f} segundos")

    start_time = time.time()
    calcular_custo_de_folha()
    print(f"Tempo para calcular custo de folha: {time.time() - start_time:.4f} segundos")

    start_time = time.time()
    layoff()
    print(f"Tempo para realizar layoff: {time.time() - start_time:.4f} segundos")

    start_time = time.time()
    calcular_custo_de_folha()
    print(f"Tempo para calcular custo de folha pós layoff: {time.time() - start_time:.4f} segundos")

if __name__ == "__main__":
    main()
