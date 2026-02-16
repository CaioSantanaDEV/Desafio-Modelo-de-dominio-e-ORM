INSERT INTO tb_categoria(descricao) VALUES ('Curso');
INSERT INTO tb_categoria(descricao) VALUES ('Oficina');

INSERT INTO tb_atividades (id, nome, descricao, preco, categoria_id) VALUES (1,'Curso de HTML','Aprenda HTML de forma prática', 80.00, 1);
INSERT INTO tb_atividades (id, nome, descricao, preco, categoria_id) VALUES (2,'Oficina de Github','Controle versões de seus projetos', 50.00, 2);


INSERT INTO tb_blocos (id, atividade_id, inicio, fim) VALUES (1, 1, '2017-09-25 08:00:00', '2017-09-25 11:00:00');
INSERT INTO tb_blocos (id, atividade_id, inicio, fim) VALUES (2, 2, '2017-09-25 14:00:00', '2017-09-25 18:00:00');
INSERT INTO tb_blocos (id, atividade_id, inicio, fim) VALUES (3, 2, '2017-09-26 08:00:00', '2017-09-26 11:00:00');

INSERT INTO tb_participantes(id, email, nome) VALUES (1, 'Jose Silva', 'jose@gmail.com');
INSERT INTO tb_participantes(id, email, nome) VALUES (2, 'Tiago Faria', 'tiago@gmail.com');
INSERT INTO tb_participantes(id, email, nome) VALUES (3, 'Maria do Rosario', 'maria @gmail.com');
INSERT INTO tb_participantes(id, email, nome) VALUES (4, 'Teresa Silva', 'teresa@gmail.com');

INSERT INTO tb_participante_atividade (atividade_id, participante_id) VALUES (1,1);
INSERT INTO tb_participante_atividade (atividade_id, participante_id) VALUES (1,2);
INSERT INTO tb_participante_atividade (atividade_id, participante_id) VALUES (1,3);
INSERT INTO tb_participante_atividade (atividade_id, participante_id) VALUES (2,3);
INSERT INTO tb_participante_atividade (atividade_id, participante_id) VALUES (2,4);