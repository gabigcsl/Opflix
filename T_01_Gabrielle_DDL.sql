use T_OpFlix;

--ddl cria as tabelas 

create table Permissoes
(
IdPermissao   int primary key identity 
,Nome         varchar (200) not null unique 
);

create table Categorias
(
IdCategoria     int primary key identity
,Nome           varchar (200) not null unique 
);

create table Usuarios
(
IdUsuarios    int primary key identity 
,Nome         varchar (200) not null unique 
,Email        varchar (250) not null unique 
,Senha        varchar (200) not null 
,IdPermissao  int foreign key references Permissoes (IdPermissao)
);

create table Lancamentos
(
IdLancamento   int primary key identity 
,Nome          varchar (250) not null unique 
,Sinopse       varchar (255) not null unique 
,Tipo          varchar (200) not null 
,Duracao       varchar (200) not null 
,Datal         datetime
,Plataforma    varchar (200) not null 
,IdCategoria   int foreign key references Categorias (IdCategoria)
);

------------------
---ex. extra


