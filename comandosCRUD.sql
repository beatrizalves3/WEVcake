#Select de usuarios
SELECT * FROM usuario;

#Select de bolos
SELECT * FROM bolo;

#Select de venda
SELECT * FROM venda;

#----------------------------------
#insercao de dados
#inserir usuarios
INSERT INTO `wevcake`.`usuario` (`nome`, `sobrenome`, `email`, `telefone`, `senha`) VALUES ('Wilma', 'Beatriz', 'wilmabia3.alves@gmail.com', '40028922', '12345');

#inserir bolo
INSERT INTO `wevcake`.`bolo` (`nome_bolo`,`descricao`,`preco_bolo`)  VALUES ('Bolo de Chocoleite','Bolo de chocolate ao leite',100.00);

#inserir a venda do bolo
INSERT INTO `wevcake`.`venda` (`usuario_idusuario`,`bolo_idbolo`,`data_venda`) VALUES (1,1,'2023/06/17');
#--------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Listagem de vendas
SELECT venda.idvenda as '#', usuario.nome,
usuario.sobrenome,
bolo.nome_bolo as 'nome do bolo', bolo.preco_bolo as 'preço do bolo'
FROM venda, usuario, bolo;