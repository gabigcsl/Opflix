use T_OpFlix;

--dml insere os arquivos na tabela

---------------------------------------

INSERT INTO Permissoes (Nome) VALUES('Administrador');
insert into Permissoes (Nome) values ('Cliente');

select * from Permissoes;
select * from Usuarios;


-------------------------------------

insert into Categorias (Nome) values ('A��o');
insert into Categorias (Nome) values ('Drama');
insert into Categorias (Nome) values ('Com�dia R�mantica');
insert into Categorias (Nome) values ('Terror');
insert into Categorias (Nome) values ('Romance');

select *from Categorias;

--------------------------------------

INSERT INTO Usuarios (Nome,Email,Senha,IdPermissao) VALUES ('Gabi','g@g.com','123', 1);
insert into Usuarios (Nome,Email,Senha,IdPermissao) values ('Bia','bi@b.com','321', '2');
insert into Usuarios (Nome,Email,Senha,IdPermissao) values ('Bruno','b@b.com','213', '2');
insert into Usuarios (Nome,Email,Senha,IdPermissao) values ('Arthur','a@a.com','231', '2');
insert into Usuarios (Nome,Email,Senha,IdPermissao) values ('Larissa','l@l.com','222', '1');

select * from Usuarios;

delete from Usuarios where IdUsuarios = 2

------------------------------------------

insert into Plataformas (Nome) values ('Netflix');
insert into Plataformas (Nome) values ('Cinema');

select * from Plataformas;

------------------------------------------

insert into Lancamentos (Nome,Sinopse,Tipo,Duracao,Datal,IdCategoria,IdPlataforma) values ('Olhos que Condenam', 'Cinco adolescentes do Harlem vivem um pesadelo depois de serem injustamente acusados de um ataque brutal no Central Park. Baseada em uma hist�ria real.','S�rie','4 horas','31/05/2019','2','1');
insert into Lancamentos (Nome,Sinopse,Tipo,Duracao,Datal,IdCategoria,IdPlataforma) values ('Batalhas','Com a fal�ncia do pai, a jovem bailarina Amalie v� seu estilo de vida luxuoso desmoronar. Mas ela descobre um novo ritmo ao conhecer o dan�arino de hip-hop Mikael.', 'Filme', '1 hora', '21/09/2018','2','1');
insert into Lancamentos (Nome,Sinopse,Tipo,Duracao,Datal,IdCategoria,IdPlataforma) values ('Um porto seguro', 'Uma mulher misteriosa se muda para e recome�a sua vida.E acaba levantando questionamentos sobre seu passado, que esconde um terr�vel segredo que continua assombrando a sua vida.','Filme', '1 hora','19/04/2013','5','2');

delete from Lancamentos;

---------------------
---ex.extras

----inserir mias 3 filmes que est�o no cinema

insert into Lancamentos (Nome,Sinopse,Tipo,Duracao,Datal,IdCategoria,IdPlataforma) values ('O rei le�o', 'Tra�do e exilado de seu reino, o le�ozinho Simba precisa descobrir como crescer e retomar seu destino como herdeiro real nas plan�cies da savana africana.','Filme', '2 horas' ,'18/06/2019', '2','2');
