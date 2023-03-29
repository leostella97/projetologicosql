# Criação de projeto lógico de Banco de Dados SQL
Código SQL que cria duas tabelas em um banco de dados. A primeira tabela é chamada de "Clientes" e tem três colunas: "ID" (um número inteiro que não pode ser nulo), "Nome" (uma sequência de caracteres de até 50 caracteres que não pode ser nula) e "Endereco" (uma sequência de caracteres de até 100 caracteres que pode ser nula). A coluna "ID" é a chave primária da tabela.

Em seguida, alguns dados são inseridos na tabela "Clientes" usando a cláusula "INSERT INTO".

Depois disso, um usuário chamado "Gerente" é criado com uma senha definida como "senha123". Este usuário é então concedido acesso de leitura, inserção e atualização à tabela "Clientes".

A segunda tabela é chamada de "Pedidos" e possui três colunas: "ID" (um número inteiro que não pode ser nulo), "ID_Cliente" (um número inteiro que não pode ser nulo e é uma chave estrangeira que referencia a coluna "ID" da tabela "Clientes") e "Data" (uma data que pode ser nula). A coluna "ID" é a chave primária da tabela.

Algumas informações são inseridas na tabela "Pedidos" usando a cláusula "INSERT INTO".

Por fim, uma consulta é feita usando a cláusula "SELECT" que junta as tabelas "Clientes" e "Pedidos" baseado na correspondência da coluna "ID" na tabela "Clientes" com a coluna "ID_Cliente" na tabela "Pedidos". O resultado final da consulta é uma tabela que mostra os nomes dos clientes e as datas de seus pedidos.