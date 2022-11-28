# College Database Test

This was a Database test I had in college, the professor gave an existing database and with some errors, the proposed activity was to correct the code errors in the database, and make queries.

## The queries requested were:

#### Show the mother aged > 47 years and her children aged > 17 years.
```mysql
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
```
#### Show the mother aged 20 to 34 years and her children aged < 5 years.
```mysql 
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
```
#### Show the employee, wife aged 35 to 46 years and their children aged > 12 years.
```mysql 
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
```
#### Show the employee aged > 50 years, wife and children aged < 17 years.
```mysql 
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
```
#### Show employees aged 35 to 49 years, wives and their children > 12 years.
```mysql 
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
```
#### Show employees aged 20 to 34 years, wives and children < 5 years.
```mysql 
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
```
 
