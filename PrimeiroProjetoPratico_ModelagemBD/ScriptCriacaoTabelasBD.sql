-- Criação das tabelas
CREATE TABLE Cliente (
    cliente_id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(255),
    email VARCHAR(50),
    telefone VARCHAR(20)
);

CREATE TABLE Categoria (
    categoria_id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT
);

CREATE TABLE Armazem (
    armazem_id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(255)
);

CREATE TABLE Produto (
    produto_id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10, 2),
    quantidade_estoque INT,
    categoria_id INT,
    armazem_id INT,
    FOREIGN KEY (categoria_id) REFERENCES Categoria(categoria_id),
    FOREIGN KEY (armazem_id) REFERENCES Armazem(armazem_id)
);

CREATE TABLE Pedido (
    pedido_id SERIAL PRIMARY KEY,
    cliente_id INT,
    data_pedido DATE,
    valor_total DECIMAL(10, 2),
    desconto DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id)
);

CREATE TABLE ItemPedido (
    item_pedido_id SERIAL PRIMARY KEY,
    pedido_id INT,
    produto_id INT,
    quantidade INT,
    subtotal DECIMAL(10, 2),
    FOREIGN KEY (pedido_id) REFERENCES Pedido(pedido_id),
    FOREIGN KEY (produto_id) REFERENCES Produto(produto_id)
);

CREATE TABLE FormaPagamento (
    forma_pagamento_id SERIAL PRIMARY KEY,
    tipo VARCHAR(50),
    descricao TEXT
);

CREATE TABLE Vendedor (
    vendedor_id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Comissao (
    comissao_id SERIAL PRIMARY KEY,
    valor DECIMAL(10, 2),
    descricao TEXT,
    vendedor_id INT,
    FOREIGN KEY (vendedor_id) REFERENCES Vendedor(vendedor_id)
);

CREATE TABLE ProgramaBeneficios (
    beneficio_id SERIAL PRIMARY KEY,
    cliente_id INT,
    quantidade INT,
    data_beneficio DATE,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id)
);

CREATE TABLE Venda (
    venda_id SERIAL PRIMARY KEY,
    pedido_id INT UNIQUE,
    vendedor_id INT,
    data_venda DATE,
    valor_total DECIMAL(10, 2),
    desconto DECIMAL(10, 2),
    pontos_id INT,
    forma_pagamento_id INT,
    comissao_id INT,
    FOREIGN KEY (pedido_id) REFERENCES Pedido(pedido_id),
    FOREIGN KEY (vendedor_id) REFERENCES Vendedor(vendedor_id),
    FOREIGN KEY (pontos_id) REFERENCES ProgramaBeneficios(beneficio_id),
    FOREIGN KEY (forma_pagamento_id) REFERENCES FormaPagamento(forma_pagamento_id),
    FOREIGN KEY (comissao_id) REFERENCES Comissao(comissao_id)
);

CREATE TABLE CampanhaPromocional (
    campanha_id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    data_inicio DATE,
    data_termino DATE
);

CREATE TABLE CampanhaProduto (
    campanha_id INT,
    produto_id INT,
    FOREIGN KEY (campanha_id) REFERENCES CampanhaPromocional(campanha_id),
    FOREIGN KEY (produto_id) REFERENCES Produto(produto_id),
    PRIMARY KEY (campanha_id, produto_id)
);

CREATE TABLE AvaliacaoProduto (
    avaliacao_id SERIAL PRIMARY KEY,
    cliente_id INT,
    produto_id INT,
    pontuacao INT,
    comentario TEXT,
    data_avaliacao DATE,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id),
    FOREIGN KEY (produto_id) REFERENCES Produto(produto_id)
);
