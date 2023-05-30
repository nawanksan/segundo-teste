create database escola;

create table Professor(
    cpf_prof varchar(11) not null,
    nome varchar(35) not null,
    titulacao varchar(20) not null,
    tempo_servico varchar(20),
    primary key(cpf_prof)
);

alter table Professor
add primary key(cpf_prof);

insert into Professor values('90876545654', 'Denival', 'Doutorado', '68');
insert into Professor values('09845312376', 'Gerson', 'Mestrado', '34');


create table disciplina(
    cod_disc int not null,
    cpf_prof varchar(11) not null,
    nome_disc varchar(30) not null,
    carga_horaria int not null,
    primary key(cod_disc),
    foreign key(cpf_prof) references Professor(cpf_prof)
);

alter table disciplina
add primary key(cod_disc);
add foreign key(cpf_prof) references Professor(cpf_prof);

insert into disciplina values(1,'90876545654', 'Banco', 68);
insert into disciplina values(2,'09845312376', 'Engenharia', 34);



create table Aluno(
    matricula varchar(16) not null,
    nome varchar(35) not null
);

alter table Aluno
add primary key(matricula);

alter table Aluno
add curso varchar(40) not null

insert into Aluno values('2022113tads0383', 'Nawaksan', 'ADS');
insert into Aluno values('2022113tads9879', 'Juan','ADS');


create table Turma(
    cod_disc int not null,
    matricula varchar(16) not null
);

alter table Turma
add primary key(cod_disc, matricula);

insert into Turma values(1, '2022113tads0383');
insert into Turma values(1, '2022113tads9879');

-- modificar
update Aluno
    set nome = 'Taynara'
where matricula = '2022113tads9879'

delete from Professor
where cpf_prof = '09845312376';