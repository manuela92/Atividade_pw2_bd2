CREATE DATABASE pw2_atividade_bd2;
USE pw2_atividade_bd2;

CREATE TABLE usuario(
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255),
    data_nascimento DATE NOT NULL,
    cpf VARCHAR (20),
    cnpj VARCHAR (20),
    razao_social VARCHAR (255),
    email VARCHAR (100) NOT NULL,
    senha VARCHAR (20) NOT NULL
);

CREATE TABLE login(
	id_login INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    email VARCHAR (100) NOT NULL,
    hash_senha VARCHAR (20) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario)
);

INSERT INTO usuario (nome, data_nascimento, cpf, email, senha) VALUES ("Fernanda Silva", "1997-01-02", "123.456.789-00", "fernanda.silva@email.com", "123456abc");
INSERT INTO login (email, hash_senha) VALUES ("fernanda.silva@email.com", "123456abc");
INSERT INTO usuario (nome, data_nascimento, cpf, email, senha) VALUES ("Ana Luiza", "1996-05-02", "222.333.111-00", "analuiza1@email.com", "abcd1234");
INSERT INTO login (email, hash_senha) VALUES ("analuiza1@email.com", "abcd1234");

UPDATE login
SET id_usuario = 1
WHERE id_login= 1;
UPDATE login
SET id_usuario = 2
WHERE id_login= 2;
UPDATE usuario
SET data_nascimento = "1997-01-02"
WHERE id_usuario= 1;

SELECT*FROM login
INNER JOIN usuario ON login.id_usuario=usuario.id_usuario;
