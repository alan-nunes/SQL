# Conceitos de Banco de Dados

Este documento descreve os conceitos e práticas de banco de dados que foram estudados e aplicados.

## 1. Criação de Banco de Dados

- **Criar um Banco de Dados:**
  ```sql
  CREATE DATABASE cadastro
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;
Selecionar o Banco de Dados:
sql
Copiar código
USE cadastro;
2. Criação e Modificação de Tabelas
Criar uma Tabela:

sql
Copiar código
CREATE TABLE pessoas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(30) NOT NULL,
  nascimento DATE,
  sexo ENUM('M', 'F'),
  peso DECIMAL(5,2),
  altura DECIMAL(3,2),
  nacionalidade VARCHAR(20) DEFAULT 'Brasil'
) DEFAULT CHARSET = utf8, AUTO_INCREMENT = 1;
Adicionar uma Coluna:

sql
Copiar código
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10);
Remover uma Coluna:

sql
Copiar código
ALTER TABLE pessoas
DROP COLUMN profissao;
Modificar uma Coluna:

sql
Copiar código
ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20) NOT NULL DEFAULT ' ';
Renomear uma Tabela:

sql
Copiar código
ALTER TABLE pessoas
RENAME TO gafanhotos;
3. Manipulação de Dados
Inserir Dados em uma Tabela:
sql
Copiar código
INSERT INTO pessoas (nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES ('Godofredo', '1984-01-02', 'M', 78.5, 1.83, 'Brasil');

INSERT INTO pessoas (nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES ('Maria', '1999-12-30', 'F', 55.2, 1
