CREATE TABLE Clientes (
  ID INT NOT NULL,
  Nome VARCHAR(50) NOT NULL,
  Endereco VARCHAR(100),
  PRIMARY KEY (ID)
);

INSERT INTO Clientes (ID, Nome, Endereco)
VALUES
  (1, 'Dave Grolh', 'Rua A'),
  (2, 'Axl Rose', 'Rua B'),
  (3, 'Gene Simmons', 'Rua C'),
  (4, 'Angus Young', 'Rua D');

CREATE USER Gerente WITH PASSWORD 'senha123';
GRANT SELECT, INSERT, UPDATE ON Clientes TO Gerente;

CREATE TABLE Pedidos (
  ID INT NOT NULL,
  ID_Cliente INT NOT NULL,
  Data DATE,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID)
);

INSERT INTO Pedidos (ID, ID_Cliente, Data)
VALUES
  (1, 1, '2022-01-01'),
  (2, 1, '2022-02-15'),
  (3, 3, '2022-03-10'),
  (4, 2, '2022-04-20');

SELECT Clientes.Nome, Pedidos.Data
FROM Clientes
JOIN Pedidos ON Clientes.ID = Pedidos.ID_Cliente;
