USE agenda;

DROP TABLE Agendamentos;

DROP TABLE Usuarios;
DROP TABLE Pacientes;
DROP TABLE Medicos;

CREATE TABLE IF NOT EXISTS Usuarios
( 
  id INT(5) AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(20) NOT NULL,
  usrnome VARCHAR(15) NOT NULL,
  email VARCHAR(100) NOT NULL,
  senha VARCHAR(10) NOT NULL 
)ENGINE=InnoDB;
  
CREATE TABLE IF NOT EXISTS Pacientes
( 
  id INT(5) AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(20) NOT NULL,
  fone VARCHAR(15) NULL,
  Celular VARCHAR(15) NULL,
  Obs VARCHAR(100) NULL,
  idusr INT NOT NULL
)ENGINE=InnoDB;
  
CREATE TABLE IF NOT EXISTS Medicos
( 
  id INT(5) AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(20) NOT NULL,
  crm  INT NOT NULL,
  uf_crm VARCHAR(2) NOT NULL,
  Celular VARCHAR(15) NULL,
  idusr INT(5) NOT NULL
)ENGINE=InnoDB;
  
CREATE TABLE IF NOT EXISTS Agendamentos
(
  id INT(5) AUTO_INCREMENT PRIMARY KEY,
  idpaciente INT(5) NOT NULL,
  idmedico INT(5) NOT NULL,
  DtAgendamento DATETIME NOT NULL,
  situacao VARCHAR(1) NOT NULL DEFAULT 'A', 
  retorno BIT NOT NULL DEFAULT 0, 
  idusr INT NOT NULL,
  FOREIGN KEY (idusr) REFERENCES usuarios(id),
  FOREIGN KEY (idpaciente) REFERENCES pacientes(id),
  FOREIGN KEY (idmedico) REFERENCES medicos(id)
)ENGINE=InnoDB;

INSERT INTO usuarios ( nome, usrnome, email, senha )
SELECT 'Administrador', 'ADMIN', 'adm@adm.com', '123456'
UNION ALL 
SELECT 'Usuario', 'USER', 'user@adm.com', '123456'
UNION ALL 
SELECT 'Robson Batista Neto', 'RBNETO', 'rbneto@adm.com', '123456';

SELECT a.*, m.nome as NomeMedico, m.crm as CRM, m.uf_crm as UF, m.Celular as CelMedico, p.nome as NomePaciente, 
       p.fone as FonePaciente, p.Celular as CelularPaciente
  FROM agendamentos   a
 INNER JOIN medicos   m ON a.idmedico = m.id
 INNER JOIN pacientes p ON a.idpaciente = p.id
 INNER JOIN usuarios  u ON a.idusr = u.id
WHERE a.DtAgendamento between date_format(str_to_date('01/01/2018', '%d/%m/%Y'), '%Y-%m-%d') and date_format(str_to_date('31/12/2018', '%d/%m/%Y'), '%Y-%m-%d')
  and a.idmedico = 2;

select * from agendamentos;

ALTER TABLE agendamentos ADD CONSTRAINT dt_situacao_unique UNIQUE (DtAgendamento, Situacao);