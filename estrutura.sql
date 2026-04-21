-- CREATE DATABASE sistema_financeiro;

USE sistema_financeiro;

# criando tabelas
CREATE TABLE contas(	
	id_contas INT NOT NULL AUTO_INCREMENT, -- chave primaria
	nome_contas VARCHAR(50),
	saldo_contas DECIMAL(8, 2) DEFAUlT 0, -- 999999,99
	PRIMARY KEY(id_contas)
);


CREATE TABLE transacoes(
	id_transacao INT NOT NULL AUTO_INCREMENT, -- chave primaria
	id_contas INT, -- chave estrangeira
	tipo_transacoes VARCHAR(20),
	valor_transacao DECIMAL(8, 2),
	data_transacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(id_transacao),
	FOREIGN KEY(id_contas) REFERENCES contas(id_contas)
);
