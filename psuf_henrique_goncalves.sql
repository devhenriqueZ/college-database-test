CREATE DATABASE test_0050482011019;

USE test_0050482011019;

CREATE TABLE empregado
  (
     empr_cd_empregado  CHAR(8) NOT NULL,
     empr_nm_empregado  CHAR(30),
     empr_ds_endereco   CHAR(50),
     empr_nm_cidade     CHAR(20),
     empr_nm_estado     CHAR(2),
     empr_nm_telefone   CHAR(11),
     empr_dt_nascimento DATE
  );
  
CREATE TABLE dependente
  (
     empr_cd_empregado  CHAR(8) NOT NULL,
     depe_cd_dependente INTEGER NOT NULL,
     depe_nm_dependente CHAR(30),
     pare_cd_parentesco INTEGER,
     depe_dt_nascimento DATE
  );

CREATE TABLE parentesco
  (
     pare_cd_parentesco INTEGER NOT NULL,
     pare_ds_parentesco CHAR(25)
  );

#====================================================================================================================================
# Definindo as chaves primárias
#====================================================================================================================================
ALTER TABLE empregado
  ADD PRIMARY KEY (empr_cd_empregado);

ALTER TABLE dependente
  ADD PRIMARY KEY (empr_cd_empregado, depe_cd_dependente);

ALTER TABLE parentesco
  ADD PRIMARY KEY (pare_cd_parentesco);

#====================================================================================================================================
# Definindo as chaves estrangeiras
#====================================================================================================================================
ALTER TABLE dependente
  ADD FOREIGN KEY (empr_cd_empregado) REFERENCES empregado (empr_cd_empregado);

ALTER TABLE dependente
  ADD FOREIGN KEY (pare_cd_parentesco) REFERENCES parentesco (pare_cd_parentesco
  );

#====================================================================================================================================
# Inserindo dados nas tabelas
#====================================================================================================================================
INSERT INTO parentesco
VALUES      (99,
             'Esposa');

INSERT INTO parentesco
VALUES      (1,
             'Filha');

INSERT INTO parentesco
VALUES      (2,
             'Filho');

INSERT INTO empregado
VALUES      (1,
             'Empregado 1',
             'Rua 1',
             'Campinas',
             'sp',
             '33642735',
             '1967-01-01');

INSERT INTO empregado
VALUES      (2,
             'Empregado 2',
             'Rua 2',
             'Cabo Frio',
             'rj',
             '33257896',
             '1967-01-01');

INSERT INTO empregado
VALUES      (3,
             'Empregado 3',
             'Rua 3',
             'Franca',
             'sp',
             '33754127',
             '1967-01-01');

INSERT INTO empregado
VALUES      (4,
             'Empregado 4',
             'Rua 4',
             'Araruama',
             'rj',
             '33675896',
             '1975-01-01');

INSERT INTO empregado
VALUES      (5,
             'Empregado 5',
             'Rua 5',
             'Barretos',
             'sp',
             '33641258',
             '1975-01-01');

INSERT INTO empregado
VALUES      (6,
             'Empregado 6',
             'Rua 6',
             'Resende',
             'rj',
             '33634185',
             '1975-01-01');

INSERT INTO empregado
VALUES      (7,
             'Empregado 7',
             'Rua 7',
             'Taubate',
             'sp',
             '33675896',
             '1990-01-01');

INSERT INTO empregado
VALUES      (8,
             'Empregado 8',
             'Rua 8',
             'Volta Redonda',
             'rj',
             '33641258',
             '1990-01-01');

INSERT INTO empregado
VALUES      (9,
             'Empregado 9',
             'Rua 9',
             'Atibaia',
             'sp',
             '33634185',
             '1990-01-01');

INSERT INTO dependente
VALUES      (1,
             1,
             'Filho 1',
             2,
             '2004-01-01');

INSERT INTO dependente
VALUES      (1,
             2,
             'Filha 1',
             1,
             '2002-01-01');

INSERT INTO dependente
VALUES      (1,
             3,
             'Esposa 1',
             99,
             '1971-01-01');

INSERT INTO dependente
VALUES      (2,
             1,
             'Filho 2',
             2,
             '2004-01-01');

INSERT INTO dependente
VALUES      (2,
             2,
             'Filha 2',
             1,
             '2002-01-01');

INSERT INTO dependente
VALUES      (2,
             3,
             'Esposa 2',
             99,
             '1971-01-01');

INSERT INTO dependente
VALUES      (3,
             1,
             'Filho 3',
             2,
             '2004-01-01');

INSERT INTO dependente
VALUES      (3,
             2,
             'Filha 3',
             1,
             '2002-01-01');

INSERT INTO dependente
VALUES      (3,
             3,
             'Esposa 3',
             99,
             '1971-01-01');

INSERT INTO dependente
VALUES      (4,
             1,
             'Filho 4',
             2,
             '2009-01-01');

INSERT INTO dependente
VALUES      (4,
             2,
             'Filha 4',
             1,
             '2007-01-01');

INSERT INTO dependente
VALUES      (4,
             3,
             'Esposa 4',
             99,
             '1979-01-01');

INSERT INTO dependente
VALUES      (5,
             1,
             'Filho 5',
             2,
             '2009-01-01');

INSERT INTO dependente
VALUES      (5,
             2,
             'Filha 5',
             1,
             '2007-01-01');

INSERT INTO dependente
VALUES      (5,
             3,
             'Esposa 5',
             99,
             '1979-01-01');

INSERT INTO dependente
VALUES      (6,
             1,
             'Filho 6',
             2,
             '2009-01-01');

INSERT INTO dependente
VALUES      (6,
             2,
             'Filha 6',
             1,
             '2007-01-01');

INSERT INTO dependente
VALUES      (6,
             3,
             'Esposa 6',
             99,
             '1979-01-01');

INSERT INTO dependente
VALUES      (7,
             1,
             'Filho 7',
             2,
             '2016-01-01');

INSERT INTO dependente
VALUES      (7,
             2,
             'Filha 7',
             1,
             '2014-01-01');

INSERT INTO dependente
VALUES      (7,
             3,
             'Esposa 7',
             99,
             '1998-01-01');

INSERT INTO dependente
VALUES      (8,
             1,
             'Filho 8',
             2,
             '2016-01-01');

INSERT INTO dependente
VALUES      (8,
             2,
             'Filha 8',
             1,
             '2014-01-01');

INSERT INTO dependente
VALUES      (8,
             3,
             'Esposa 8',
             99,
             '1996-01-01');

INSERT INTO dependente
VALUES      (9,
             1,
             'Filho 9',
             2,
             '2016-01-01');

INSERT INTO dependente
VALUES      (9,
             2,
             'Filha 9',
             1,
             '2014-01-01');

# Adicionei um 99 no insert pois estava faltando esse parâmetro que é atribuido as esposas
INSERT INTO dependente
VALUES      (9,
             3,
             'Esposa 9',
             99,
             '1996-01-01'); 

#====================================================================================================================================
# 1 - Escreva uma query para mostrar a mãe com idade > 47 anos e seus filhos com idade > 17 anos.
#     colunas -> nome e data nascimento esposa, nome e data nascimento filho e cidade
#====================================================================================================================================
SELECT DEP.depe_nm_dependente  AS 'Mae',
       DEP.depe_dt_nascimento  AS 'Dt Nasc Mae',
       PRIM.depe_nm_dependente AS 'Primogenito',
       PRIM.depe_dt_nascimento AS 'Dt Nasc Primogenito',
       SEC.depe_nm_dependente  AS 'Segundogenito',
       SEC.depe_dt_nascimento  AS 'Dt Nasc Segundogenito',
       EMP.empr_nm_cidade      AS 'Cidade'
FROM   ((dependente AS DEP
         JOIN dependente AS PRIM
           ON DEP.empr_cd_empregado = PRIM.empr_cd_empregado)
        JOIN dependente AS SEC
          ON DEP.empr_cd_empregado = SEC.empr_cd_empregado)
       JOIN empregado AS EMP
         ON DEP.empr_cd_empregado = EMP.empr_cd_empregado
WHERE  DEP.pare_cd_parentesco = 99
       AND PRIM.pare_cd_parentesco = 2
       AND SEC.pare_cd_parentesco = 1
GROUP  BY EMP.empr_cd_empregado
HAVING ( Datediff(Curdate(), DEP.depe_dt_nascimento) / 365 ) > 47
       AND ( Datediff(Curdate(), PRIM.depe_dt_nascimento) / 365 ) > 17
       AND ( Datediff(Curdate(), SEC.depe_dt_nascimento) / 365 ) > 17;
       
#====================================================================================================================================
# 2 - Escreva uma query para mostrar a mãe com idade de 20 a 34 anos e seus filhos com idade < 5 anos.
#     colunas -> nome e data nascimento esposa, nome e data nascimento filho e endereço
# OBS: CONSULTA VAZIA
#====================================================================================================================================
SELECT DEP.depe_nm_dependente  AS 'Mae',
       DEP.depe_dt_nascimento  AS 'Dt Nasc Mae',
       PRIM.depe_nm_dependente AS 'Primogenito',
       PRIM.depe_dt_nascimento AS 'Dt Nasc Primogenito',
       SEC.depe_nm_dependente  AS 'Segundogenito',
       SEC.depe_dt_nascimento  AS 'Dt Nasc Segundogenito',
       EMP.empr_ds_endereco    AS 'Endereco'
FROM   ((dependente AS DEP
         JOIN dependente AS PRIM
           ON DEP.empr_cd_empregado = PRIM.empr_cd_empregado)
        JOIN dependente AS SEC
          ON DEP.empr_cd_empregado = SEC.empr_cd_empregado)
       JOIN empregado AS EMP
         ON DEP.empr_cd_empregado = EMP.empr_cd_empregado
WHERE  DEP.pare_cd_parentesco = 99
       AND PRIM.pare_cd_parentesco = 2
       AND SEC.pare_cd_parentesco = 1
GROUP  BY EMP.empr_cd_empregado
HAVING ( Datediff(Curdate(), DEP.depe_dt_nascimento) / 365 ) >= 20
       AND ( Datediff(Curdate(), DEP.depe_dt_nascimento) / 365 ) <= 34
       AND ( Datediff(Curdate(), PRIM.depe_dt_nascimento) / 365 ) < 5
       AND ( Datediff(Curdate(), SEC.depe_dt_nascimento) / 365 ) < 5;
       
#====================================================================================================================================
# 3 - Escreva uma query para mostrar o empregado, esposa com idade de 35 a 46 anos e seus filhos com idade > 12 anos.
#     colunas -> nome e data nascimento empregado, nome e data de nascimento da esposa, nome e data nascimento filho e código do empregado
#====================================================================================================================================
SELECT EMP.empr_nm_empregado    AS 'Empregado',
       EMP.empr_dt_nascimento   AS 'DT Empregado',
       DEP.depe_nm_dependente   AS 'Esposa',
       DEP.depe_dt_nascimento   AS 'Dt Nasc Esposa',
       PRIM.depe_nm_dependente  AS 'Primogenito',
       PRIM.depe_dt_nascimento  AS 'Dt Nasc Primogenito',
       SEC.depe_nm_dependente   AS 'Segundogenito',
       SEC.depe_dt_nascimento   AS 'Dt Nasc Segundogenito',
       EMP.empr_cd_empregado    AS 'Código'
FROM   ((dependente AS DEP
         JOIN dependente AS PRIM
           ON DEP.empr_cd_empregado = PRIM.empr_cd_empregado)
        JOIN dependente AS SEC
          ON DEP.empr_cd_empregado = SEC.empr_cd_empregado)
       JOIN empregado AS EMP
         ON DEP.empr_cd_empregado = EMP.empr_cd_empregado
WHERE  DEP.pare_cd_parentesco = 99
       AND PRIM.pare_cd_parentesco = 2
       AND SEC.pare_cd_parentesco = 1
GROUP  BY EMP.empr_cd_empregado
HAVING ( Datediff(Curdate(), DEP.depe_dt_nascimento) / 365 ) >= 35
       AND ( Datediff(Curdate(), DEP.depe_dt_nascimento) / 365 ) <= 46
       AND ( Datediff(Curdate(), PRIM.depe_dt_nascimento) / 365 ) > 12
       AND ( Datediff(Curdate(), SEC.depe_dt_nascimento) / 365 ) > 12;

#====================================================================================================================================
# 4 - Escreva uma query para mostrar o empregado com idade > 50 anos, esposa e seus filhos com idade < 17 anos.
#     colunas -> nome e data nascimento empregado, nome e data de nascimento da esposa, nome e data nascimento filho e cidade
# OBS: CONSULTA VAZIA
#====================================================================================================================================
SELECT EMP.empr_nm_empregado    AS 'Empregado',
       EMP.empr_dt_nascimento   AS 'DT Empregado',
       DEP.depe_nm_dependente   AS 'Esposa',
       DEP.depe_dt_nascimento   AS 'Dt Nasc Esposa',
       PRIM.depe_nm_dependente  AS 'Primogenito',
       PRIM.depe_dt_nascimento  AS 'Dt Nasc Primogenito',
       SEC.depe_nm_dependente   AS 'Segundogenito',
       SEC.depe_dt_nascimento   AS 'Dt Nasc Segundogenito',
       EMP.empr_nm_cidade       AS 'Cidade'
FROM   ((dependente AS DEP
         JOIN dependente AS PRIM
           ON DEP.empr_cd_empregado = PRIM.empr_cd_empregado)
        JOIN dependente AS SEC
          ON DEP.empr_cd_empregado = SEC.empr_cd_empregado)
       JOIN empregado AS EMP
         ON DEP.empr_cd_empregado = EMP.empr_cd_empregado
WHERE  DEP.pare_cd_parentesco = 99
       AND PRIM.pare_cd_parentesco = 2
       AND SEC.pare_cd_parentesco = 1
GROUP  BY EMP.empr_cd_empregado
HAVING ( Datediff(Curdate(), EMP.empr_dt_nascimento) / 365 ) > 50
       AND ( Datediff(Curdate(), PRIM.depe_dt_nascimento) / 365 ) < 17
       AND ( Datediff(Curdate(), SEC.depe_dt_nascimento) / 365 ) < 17;

#====================================================================================================================================
# 5 – Escreva uma query para mostrar os empregados com idade de 35 a 49 anos, esposas e seus filhos > de 12 anos.
#     colunas -> nome e data nascimento empregado, nome esposa, nome e data de nascimento filhos.
#====================================================================================================================================
SELECT EMP.empr_nm_empregado    AS 'Empregado',
       EMP.empr_dt_nascimento   AS 'DT Empregado',
       DEP.depe_nm_dependente   AS 'Esposa',
       PRIM.depe_nm_dependente  AS 'Primogenito',
       PRIM.depe_dt_nascimento  AS 'Dt Nasc Primogenito',
       SEC.depe_nm_dependente   AS 'Segundogenito',
       SEC.depe_dt_nascimento   AS 'Dt Nasc Segundogenito'
FROM   ((dependente AS DEP
         JOIN dependente AS PRIM
           ON DEP.empr_cd_empregado = PRIM.empr_cd_empregado)
        JOIN dependente AS SEC
          ON DEP.empr_cd_empregado = SEC.empr_cd_empregado)
       JOIN empregado AS EMP
         ON DEP.empr_cd_empregado = EMP.empr_cd_empregado
WHERE  DEP.pare_cd_parentesco = 99
       AND PRIM.pare_cd_parentesco = 2
       AND SEC.pare_cd_parentesco = 1
GROUP  BY EMP.empr_cd_empregado
HAVING ( Datediff(Curdate(), EMP.empr_dt_nascimento) / 365 ) >= 35
       AND ( Datediff(Curdate(), EMP.empr_dt_nascimento) / 365 ) <= 49
       AND ( Datediff(Curdate(), PRIM.depe_dt_nascimento) / 365 ) > 12
       AND ( Datediff(Curdate(), SEC.depe_dt_nascimento) / 365 ) > 12;

#====================================================================================================================================
# 6 – Escreva uma query para mostrar os empregados com idade de 20 a 34 anos, esposas e os filhos < de 5 anos.
#     colunas -> nome empregado, nome e data nascimento esposa, nome e data nascimento filhos.
# OBS: CONSULTA VAZIA
#====================================================================================================================================
SELECT EMP.empr_nm_empregado   AS 'Empregado',
       DEP.depe_nm_dependente  AS 'Esposa',
       DEP.depe_dt_nascimento  AS 'Dt Nasc Esposa',
       PRIM.depe_nm_dependente AS 'Primogenito',
       PRIM.depe_dt_nascimento AS 'Dt Nasc Primogenito',
       SEC.depe_nm_dependente  AS 'Segundogenito',
       SEC.depe_dt_nascimento  AS 'Dt Nasc Segundogenito'
FROM   ((dependente AS DEP
         JOIN dependente AS PRIM
           ON DEP.empr_cd_empregado = PRIM.empr_cd_empregado)
        JOIN dependente AS SEC
          ON DEP.empr_cd_empregado = SEC.empr_cd_empregado)
       JOIN empregado AS EMP
         ON DEP.empr_cd_empregado = EMP.empr_cd_empregado
WHERE  DEP.pare_cd_parentesco = 99
       AND PRIM.pare_cd_parentesco = 2
       AND SEC.pare_cd_parentesco = 1
       AND ( Datediff(Curdate(), EMP.empr_dt_nascimento) / 365 ) >= 20
       AND ( Datediff(Curdate(), EMP.empr_dt_nascimento) / 365 ) <= 34
       AND ( Datediff(Curdate(), PRIM.depe_dt_nascimento) / 365 ) < 5
       AND ( Datediff(Curdate(), SEC.depe_dt_nascimento) / 365 ) < 5; 