-- 1) Quantas vezes Natalie Portman foi indicada ao Oscar
-- R: 3 vezes
SELECT COUNT(*) FROM filmes where nome_do_indicado like '%Natalie Portman%';

-- 2) Quantos Oscars Natalie Portman ganhou?
-- R: 1 vez
SELECT COUNT(*) FROM filmes where nome_do_indicado like '%Natalie Portman%' and vencedor = 'True';

-- 3) Amy Adams já ganhou algum Oscar?
-- R: Não
SELECT COUNT(*) FROM filmes where nome_do_indicado like '%Amy Adams%' and vencedor = 'True';

-- 4) A série de filmes Toy Story ganhou um Oscar em quais anos?
-- R: Em 2011 e 2020
SELECT ano_cerimonia FROM filmes where filme like '%Toy Story%' and vencedor = 'True';

-- 5) A partir de que ano que a categoria "Actress" deixa de existir? 
-- R: Em 1975
SELECT * FROM filmes where categoria like 'Actress' order by ano_filmagem desc;

-- 6) O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
-- R: Foi para Janet Gaynor em 1928
SELECT nome_do_indicado, ano_cerimonia, categoria
FROM filmes
WHERE categoria = 'Actress' and vencedor = 'True'
ORDER BY ano_cerimonia
LIMIT 1;

-- 7) Na coluna/campo "Vencedor", altere todos os valores com "Sim" para 1 e todos os valores "Não" para 0.
UPDATE filmes SET vencedor = 0 where vencedor = 'False';
UPDATE filmes SET vencedor = 1 where vencedor = 'True';

-- 8) Em qual edição do Oscar "Crash" ganhou o prêmio principal?
-- R: Na 78° edição em 2006.
SELECT * FROM filmes where filme like '%Crash%' and vencedor = '1';

-- 9) Bom... dê um Oscar para um filme que merece muito, mas não ganhou.
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor) 
values('2022', '2023', '95', 'MUSIC (Original Score)', 'Sofia Carson', 'Purple Hearts', '1');

-- 10)  filme Central do Brasil aparece no Oscar?
-- Sim, apareceu em 1999
SELECT * from filmes WHERE filme like '%Central Station%';

-- 11) Inclua no banco 3 filmes que nunca foram nem nomeados ao Oscar, mas que merecem ser. 
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor) VALUES('2012', '2014', '86', 'ACTOR', 'Paulo Gustavo', 'Minha Mãe é uma Peça', '1');
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor) VALUES('1998', '2000', '72', 'BEST PICTURE', 'Guel Arraes, Producer', 'O Auto da Compadecida', '1' );
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor) VALUES('2012', '2014', '86', 'ACTOR', 'Leandro Hassum' ,'Até que a Sorte Nos Separe', '1' );

-- 12) Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?
-- R: Em 2003 o longa Chicago ganhou como melhor filme; Nicole Kidman,melhor atriz; Roman Polanski, melhor Diretor.   
SELECT * FROM filmes where ano_cerimonia = 2003 and categoria like '%BEST PICTURE%' and vencedor = '1';
SELECT * FROM filmes where ano_cerimonia = 2003 and categoria like '%ACTRESS%' and vencedor = '1';
SELECT * FROM filmes where ano_cerimonia = 2003 and categoria like '%ACTOR%' and vencedor = '1';
SELECT * FROM filmes where ano_cerimonia = 2003 and categoria like '%DIRECTING%' and vencedor = '1';

-- 13) Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco com o prêmio que você quiser. 
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor) VALUES('2013', '2015', '87', 'BEST ACTRESS', "Lupita Nyong'o", '12 Anos de Escravidão', '1');
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor) VALUES('2006', '2008', '80', 'BEST ACTRESS', 'Aïssa Maïga', 'Bamako', '1' );
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor) VALUES('2010', '2012','84', 'BEST ACTRESS', 'Genevieve Nnaji', 'Ijé: The Journey', '1');
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor) VALUES('2013', '2015', '87', 'BEST ACTRESS', 'Danai Gurira', 'Mother of George','1');
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor) VALUES('2005', '2008', '80','BEST ACTRESS', 'Ziyi Zhang','Memórias de uma Gueixa','1');
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor) VALUES('1999', '2001', '73','BEST ACTRESS', 'Aishwarya Rai Bachchan','Hum Dil De Chuke Sanam','1');
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor) VALUES('2012', '2014', '86','BEST ACTRESS', 'Bae Doona','Cloud Atlas','1');

-- 14) Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece? 
-- R: A "Tia Malina" fez com que eu me apaixonasse ainda mais pela música. Ela é bem mais que uma professora, sempre me incentiva e me apoia em tudo.
INSERT INTO filmes (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, filme, vencedor) VALUES ('2023', '2024', '96', 'BEST TEACHER', 'Marina Cavalcante', 'Singer House', '1');