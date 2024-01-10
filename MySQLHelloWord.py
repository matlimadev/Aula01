import mysql.connector

def conectar():
    try:
        conexao = mysql.connector.connect(
            host="localhost",
            user="root",  
            password="2407", 
            database="MySQLHelloWord" 
        )
        return conexao
    except Exception as e:
        print(f"Erro ao conectar ao banco de dados: {e}")
        return None

def criar_tabela():
    conexao = conectar()
    if conexao:
        cursor = conexao.cursor()
        try:
            cursor.execute("""
                CREATE TABLE IF NOT EXISTS RH (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    nome VARCHAR(255),
                    cargo VARCHAR(255)
                )
            """)
            print("Tabela RH criada com sucesso.")
        except Exception as e:
            print(f"Erro ao criar a tabela: {e}")
        finally:
            cursor.close()
            conexao.close()

def inserir(nome, cargo):
    conexao = conectar()
    if conexao:
        cursor = conexao.cursor()
        try:
            cursor.execute("INSERT INTO RH (nome, cargo) VALUES (%s, %s)", (nome, cargo))
            conexao.commit()
            print("Dados inseridos com sucesso.")
        except Exception as e:
            conexao.rollback()
            print(f"Erro ao inserir dados: {e}")
        finally:
            cursor.close()
            conexao.close()

def buscar():
    conexao = conectar()
    if conexao:
        cursor = conexao.cursor()
        try:
            cursor.execute("SELECT * FROM RH")
            resultados = cursor.fetchall()
            for resultado in resultados:
                print(resultado)
        except Exception as e:
            print(f"Erro ao buscar dados: {e}")
        finally:
            cursor.close()
            conexao.close()

criar_tabela()
inserir("Bruno Alves", "Analista")
inserir("Ponciano Matheus", "Gerente")
buscar()
