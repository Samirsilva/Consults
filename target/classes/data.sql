drop table conteudo IF EXISTS;

CREATE TABLE conteudo (
id MEDIUMINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(200),
categoria VARCHAR(200),
ano VARCHAR(200),
autor VARCHAR(200),
genero VARCHAR(512) ,
descricao VARCHAR(1000) default '',
capitulo VARCHAR(200) default '',
PRIMARY KEY (id),
UNIQUE INDEX nome_unique (nome ASC));


-- ----------------------------------------
-- NOVELS
-- ----------------------------------------

insert into conteudo(nome,categoria,ano,autor,genero,descricao,capitulo) values ('MARTIAL GOD ASURA','WEB NOVEL','2013','KINDHEARTEDBEE','ARTES MARCIAIS','','3314'); 
insert into conteudo(nome,categoria,ano,autor,genero,descricao,capitulo) values ('SORVEREIGN OF THE THREE REALMS','WEB NOVEL','2010','KINDHEARTEDBEE','PILULA','','2000'); 
insert into conteudo(nome,categoria,ano,autor,genero,descricao,capitulo) values ('KING OF GODS','WEB NOVEL','2012','FAST FOOD','HAREM','','1002'); 


-- ----------------------------------------
-- LIVROS
-- ----------------------------------------

insert into conteudo(nome,categoria,ano,autor,genero,descricao,capitulo) values ('GAME OF THRONES: O FESTIN DOS CORVOS','LIVRO','2010','MARTIN','MEDIEVAL','','VOLUME 4'); 
insert into conteudo(nome,categoria,ano,autor,genero,descricao,capitulo) values ('GAME OF THRONES: A DANÇA DO DRAGÃO','LIVRO','2011','MARTIN','MEDIEVAL','','VOLUME 5'); 
insert into conteudo(nome,categoria,ano,autor,genero,descricao,capitulo) values ('GAME OF THRONES: O TRONO DE GELO','LIVRO','2010','MARTIN','MEDIEVAL','','VOLUME 1'); 




-- ----------------------------------------
-- FILMES
-- ----------------------------------------

insert into conteudo(nome,categoria,ano,autor,genero,descricao,capitulo) values ('O PODEROSO CHEFINHO','FILME','2017','DISNEY','INFANTIL','','FILME ÚNICO'); 
insert into conteudo(nome,categoria,ano,autor,genero,descricao,capitulo) values ('OS INCRIVEIS 1','FILME','2016','DISNEY','INFANTIL','','FILME ÚNICO'); 
insert into conteudo(nome,categoria,ano,autor,genero,descricao,capitulo) values ('OS INCRIVEIS 2','FILME','2016','DISNEY','INFANTIL','','FILME ÚNICO'); 


-- ----------------------------------------
-- SERIES
-- ----------------------------------------

insert into conteudo(nome,categoria,ano,autor,genero,descricao,capitulo) values ('LA CASA DE PAPEL','SÉRIE','2017','NETFLIX','AÇÃO','','2 TEMPORADAS'); 
insert into conteudo(nome,categoria,ano,autor,genero,descricao,capitulo) values ('STRANGER THINGS','SÉRIE','2016','NETFLIX','TERROR','','3 TEMPORADAS'); 
insert into conteudo(nome,categoria,ano,autor,genero,descricao,capitulo) values ('BLACK MIRROR','SÉRIE','2011','NETFLIX','FICÇÃO','','4 TEMPORADAS'); 


