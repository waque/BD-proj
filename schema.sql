CREATE TABLE IF NOT EXISTS user (
    nif INT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(255) NOT NULL,
PRIMARY KEY (nif)
);

CREATE TABLE IF NOT EXISTS fiscal (
    fiscal_id INT NOT NULL UNIQUE,
    empresa VARCHAR(255) NOT NULL,
PRIMARY KEY (fiscal_id)
);

CREATE TABLE IF NOT EXISTS edificio (
    morada VARCHAR(255) NOT NULL,
PRIMARY KEY (morada)
);

CREATE TABLE IF NOT EXISTS alugavel (
    morada VARCHAR(255) NOT NULL,
    codigo INT NOT NULL,
	foto VARCHAR(255) NOT NULL, /* TODO: ver tipo correcto, VARCHAR como placeholder */
PRIMARY KEY (morada, codigo),
FOREIGN KEY (morada) REFERENCES edificio (morada) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS arrenda (
    morada VARCHAR(255) NOT NULL,
    codigo INT NOT NULL,
    nif INT NOT NULL,
PRIMARY KEY (morada, codigo),
FOREIGN KEY (morada, codigo) REFERENCES alugavel (morada, codigo),
FOREIGN KEY (nif) REFERENCES user (nif)
);

CREATE TABLE IF NOT EXISTS  fiscaliza (
    fiscal_id INT NOT NULL,
    morada VARCHAR(255) NOT NULL,
    codigo INT NOT NULL,
PRIMARY KEY (fiscal_id, morada, codigo),
FOREIGN KEY (fiscal_id) REFERENCES fiscal (fiscal_id),
FOREIGN KEY (morada, codigo) REFERENCES arrenda (morada, codigo)
);

CREATE TABLE IF NOT EXISTS espaco (
    morada VARCHAR(255) NOT NULL,
    codigo INT NOT NULL,
PRIMARY KEY (morada, codigo),
FOREIGN KEY (morada, codigo) REFERENCES alugavel (morada, codigo) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS posto (
    morada VARCHAR(255) NOT NULL,
    codigo_espaco INT NOT NULL,
    codigo_posto INT NOT NULL,
PRIMARY KEY (morada, codigo_posto),
FOREIGN KEY (morada, codigo_posto) REFERENCES alugavel (morada, codigo) ON DELETE CASCADE,
FOREIGN KEY (morada, codigo_espaco) REFERENCES espaco (morada, codigo) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS oferta (
    morada VARCHAR(255) NOT NULL,
    codigo INT NOT NULL,
    data_inicio DATETIME  NOT NULL,
    data_fim DATETIME  NOT NULL,
    tarifa INT NOT NULL,
PRIMARY KEY ( morada, codigo, data_inicio) ,
FOREIGN KEY ( morada, codigo) REFERENCES alugavel ( morada, codigo)
);


CREATE TABLE IF NOT EXISTS reserva (
    numero INT NOT NULL UNIQUE,
PRIMARY KEY (numero)
);

CREATE TABLE IF NOT EXISTS paga (
    numero INT NOT NULL,
    data_pagamento DATETIME  NOT NULL,
    metodo VARCHAR(255) NOT NULL,
PRIMARY KEY (numero) ,
FOREIGN KEY (numero) REFERENCES reserva (numero) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS estado (
    numero INT NOT NULL,
    moment TIMESTAMP NOT NULL,
    estado VARCHAR(255) NOT NULL,
PRIMARY KEY (numero, moment) ,
FOREIGN KEY (numero) REFERENCES reserva (numero) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS aluga (
    morada VARCHAR(255) NOT NULL,
    codigo INT NOT NULL,
    data_inicio DATETIME  NOT NULL, /* TODO: MUDAR PARA TIPO DATA */
    nif INT NOT NULL,
    numero INT NOT NULL,
PRIMARY KEY (morada, codigo, data_inicio, nif, numero),
FOREIGN KEY (morada, codigo, data_inicio) REFERENCES oferta (morada, codigo, data_inicio),
FOREIGN KEY (nif) REFERENCES user (nif),
FOREIGN KEY (numero) REFERENCES reserva (numero)
);
