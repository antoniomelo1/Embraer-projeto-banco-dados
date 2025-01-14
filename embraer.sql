-- Criação da tabela Fornecedor
CREATE TABLE fornecedor (
    fornecedor_id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    pais_origem VARCHAR(255) NOT NULL
);
-- Criação da tabela Material
CREATE TABLE material (
    material_id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    nivel_servico_cliente INT NOT NULL
);
-- Criação da tabela Suprimentos
CREATE TABLE suprimentos (
    id_transacao INT PRIMARY KEY AUTO_INCREMENT,
    data_compra DATE NOT NULL,
    fornecedor_id INT,
    material_id INT,
    quantidade INT NOT NULL,
    custo_unitario DECIMAL(10, 2) NOT NULL,
    custo_total DECIMAL(15, 2) NOT NULL,
    lead_time_dias INT NOT NULL,
    status_entrega VARCHAR(255) NOT NULL,
    taxa_entrega DECIMAL(10, 2) NOT NULL,
    custo_transporte DECIMAL(10, 2) NOT NULL,
    nivel_estoque_atual INT NOT NULL,
    giro_estoque DECIMAL(10, 2) NOT NULL,
    custo_manutencao DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (fornecedor_id) REFERENCES fornecedor(fornecedor_id),
    FOREIGN KEY (material_id) REFERENCES material(material_id)
);