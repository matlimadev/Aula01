--DISCENTES: PONCIANO MATHEUS / BRUNO ALVES

CREATE TABLE medico (id INT PRIMARY KEY,
nome VARCHAR(45),
end VARCHAR(45),
telefone VARCHAR(45),
crm VARCHAR(45));

INSERT INTO medico (id, nome, end, telefone, crm) VALUES
(1, 'Dr. João', 'Rua A, 123', '123456789', 'CRM12345'),
(2, 'Dra. Maria', 'Rua B, 456', '987654321', 'CRM54321'),
(3, 'Dr. Pedro', 'Rua C, 789', '111222333', 'CRM67890'),
(4, 'Dra. Ana', 'Rua D, 987', '444555666', 'CRM09876'),
(5, 'Dr. Carlos', 'Rua E, 654', '777888999', 'CRM45678');

CREATE TABLE consulta (
    id INT PRIMARY KEY,
    data DATE,
    medico_id INT,
    paciente_id INT,
    secretaria_id INT,
    valor DECIMAL(10,2),
    pago BOOLEAN
);

INSERT INTO consulta (id, data, medico_id, paciente_id, secretaria_id, valor, pago) VALUES
(1, '2024-01-13', 1, 1, 1, 150.00, TRUE),
(2, '2024-01-14', 2, 2, 2, 120.50, FALSE),
(3, '2024-01-15', 3, 3, 3, 200.00, TRUE),
(4, '2024-01-16', 4, 4, 4, 180.75, FALSE),
(5, '2024-01-17', 5, 5, 5, 250.00, TRUE);

CREATE TABLE secretaria (
    id INT PRIMARY KEY,
    nome VARCHAR(45),
    end VARCHAR(45),
    telefone VARCHAR(45),
    cpf VARCHAR(45)
);

INSERT INTO secretaria (id, nome, end, telefone, cpf) VALUES
(1, 'Ana Secretária', 'Rua X, 789', '111111111', 'CPF111111'),
(2, 'José Secretário', 'Rua Y, 456', '222222222', 'CPF222222'),
(3, 'Clara Secretária', 'Rua Z, 123', '333333333', 'CPF333333'),
(4, 'Marcos Secretário', 'Rua W, 987', '444444444', 'CPF444444'),
(5, 'Julia Secretária', 'Rua V, 654', '555555555', 'CPF555555');

CREATE TABLE paciente (id INT PRIMARY KEY,
    nome VARCHAR(45),
    end VARCHAR(45),
    tel VARCHAR(45),
    cpf VARCHAR(45)
    );
    
INSERT INTO paciente (id, nome, end, tel, cpf) VALUES
(1, 'Carlos Paciente', 'Av. Principal, 123', '666666666', 'CPF666666'),
(2, 'Mariana Paciente', 'Av. Secundária, 456', '777777777', 'CPF777777'),
(3, 'Rafael Paciente', 'Av. Alternativa, 789', '888888888', 'CPF888888'),
(4, 'Fernanda Paciente', 'Av. Central, 987', '999999999', 'CPF999999'),
(5, 'Lucas Paciente', 'Av. Residencial, 654', '123456789', 'CPF123456');
