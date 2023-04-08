create database MercadoBD;
use MercadoBD;
-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `codigo_cliente` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `sobrenome` varchar(40) NOT NULL,
  `data_nasc` date NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `rg` varchar(10) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `endereco` varchar(40) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `data_cadastro` date NOT NULL DEFAULT current_date(),
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `tb_cliente`
--

INSERT INTO `tb_cliente` (`codigo_cliente`, `nome`, `sobrenome`, `data_nasc`, `cpf`, `rg`, `bairro`, `endereco`, `numero`, `data_cadastro`, `telefone`) VALUES
(1, 'Mateus', 'Elias Vieira', '1999-09-01', '708.237.501-83', '6789043', 'Vila Domingues', 'Avenida professor Boaventura', '67', '2021-03-07 22:45:00', '(64)99224-0834'),
(4, 'Arthur', 'Elias Vieira', '2014-06-17', '111.111.111-90', '12345678', 'Cruzeiro', 'Avenida Professor Boaventura', '67', '2021-03-07 23:07:33', '(64)99999-9999'),
(6, 'nome', 'sobrenome', '2022-12-12', '111.111.111-11', '1111111', 'bairro', 'endereco', 'numero', '2021-03-08 11:50:04', '(12)22222-2222'),
(12, 'caio', 'sobrneome', '1999-10-10', '121.212.121-21', '8888888', 'bairro', 'endereco', '23', '2021-03-08 12:30:46', '(23)23232-3232'),
(13, 'adriana', 'paula elias', '2019-10-23', '232.323.232-32', '2424242', 'dfdfdf', 'dfdffd', '34', '2021-03-08 12:32:02', '(34)33434-3434'),
(14, 'Mateus', 'Elias Vieira', '1999-09-01', '708.237.501-83', '6789043', 'Vila Domingues', 'Avenida professor Boaventura', '68', '2021-03-08 14:44:38', '(64)99224-0834'),
(15, 'Iron', 'Antonio Vieira', '1976-04-03', '777.777.777-77', '1111111', 'Cruzeiro', 'Avenida Professor Boaventura', '67', '2021-03-08 14:55:06', '(23)23232-3232'),
(17, 'Junio', 'Henrique', '1989-04-08', '028.928.392-37', '0935667', 'Sao Jose', 'AV.Margon deodoro da fonseca', '34S', '2021-03-11 03:08:27', '(64)99892-8392'),
(18, 'Vitoria', 'Elias Vieira', '2005-02-18', '232.323.232-32', '9999999', 'Cruzeiro', 'AV.Professor Boaventura', '67', '2021-03-11 14:07:09', '(64)52323-2323'),
(19, 'Joao', 'Pereira Neto', '1887-08-07', '111.111.222-22', ' 090909', 'Vila cesar', 'AV.Cruzeiro do Sul', '34-B', '2021-03-11 16:33:03', '(62)56363-3533'),
(20, 'Tulio', 'Cesar', '1997-08-10', '121.212.121-21', '7777777', 'lalalalalla', 'AV.Nao sei', '58-90', '2021-03-13 02:16:13', '(23)23232-3232');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_produto`
--

CREATE TABLE `tb_produto` (
  `codigo_produto` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `unidade` varchar(15) NOT NULL,
  `preco_unitario` decimal(6,2) NOT NULL,
  `estoque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `tb_produto`
--

INSERT INTO `tb_produto` (`codigo_produto`, `descricao`, `unidade`, `preco_unitario`, `estoque`) VALUES
(1, 'Macarrao', '250 gramas', '5.00', 42),
(2, 'Arroz Garotinho', '5kg', '20.00', 16),
(3, 'Coca-Cola', '2 Litros', '7.80', 285),
(4, 'Guarana Antarctica', '2 Litros', '5.90', 134),
(5, 'Bolacha Mabel', '500 gramas', '8.50', 5),
(6, 'Cafe Rancheiro', '800 gramas', '8.95', 5),
(7, 'Açucar Cristal', '2 Kg', '12.60', 36),
(8, 'Papel Higienico Clean', '6 Rolos', '18.75', 48),
(9, 'Bolacha Passatempo', '200 gramas', '4.90', 16),
(10, 'Danone Ninho', 'Bandeja', '10.95', 6),
(11, 'Toddy', '500 gramas', '8.95', 25),
(12, 'Leite Italac', '1 litro', '4.60', 30),
(13, 'Margarina Qualy', '1 kg', '8.99', 59),
(14, 'Molho de Tomate Quero', '350 gramas', '5.65', 23),
(16, 'Desodorante Nivea', '350 ml', '14.99', 45);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_venda`
--

CREATE TABLE `tb_venda` (
  `codigo_venda` int(11) NOT NULL,
  `data_venda` date NOT NULL DEFAULT curdate(),
  `valor` decimal(7,2) NOT NULL,
  `forma_pagamento` varchar(20) NOT NULL,
  `codigo_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `tb_venda`
--

INSERT INTO `tb_venda` (`codigo_venda`, `data_venda`, `valor`, `forma_pagamento`, `codigo_cliente`) VALUES
(1, '2021-03-03', '36.29', 'Dinheiro', 1),
(2, '2021-03-04', '9.18', 'Cheque', NULL),
(3, '2021-03-05', '48.98', 'Cheque', NULL),
(4, '2021-03-06', '249.78', 'Cartão de crédito', 1),
(5, '2021-03-07', '9.18', 'Dinheiro', 1),
(6, '2021-03-10', '7.50', 'Crediário', 1),
(7, '2021-03-10', '4.59', 'Dinheiro', 1),
(8, '2021-03-10', '59.70', 'Cheque', 1),
(10, '2021-03-10', '31.20', 'Dinheiro', 6),
(11, '2021-03-10', '9.18', 'Dinheiro', 6),
(12, '2021-03-10', '9.18', 'Cartão de débito', 6),
(13, '2021-03-10', '29.50', 'Dinheiro', NULL),
(14, '2021-03-10', '23.60', 'Cartão de crédito', 1),
(15, '2021-03-10', '63.69', 'Cartão de débito', 1),
(16, '2021-03-10', '216.75', 'Dinheiro', 1),
(17, '2021-03-10', '44.38', 'Dinheiro', 1),
(18, '2021-03-10', '173.55', 'Dinheiro', 1),
(19, '2021-03-10', '10.00', 'Dinheiro', 1),
(20, '2021-03-10', '20.60', 'Cheque', NULL),
(21, '2021-03-10', '140.00', 'Dinheiro', 6),
(22, '2021-03-11', '71.40', 'Dinheiro', 4),
(23, '2021-03-11', '246.40', 'Cartão de crédito', 4),
(24, '2021-03-11', '48.95', 'Cartão de crédito', 1),
(25, '2021-03-11', '5.00', 'Dinheiro', 1),
(26, '2021-03-11', '20.00', 'Dinheiro', 1),
(27, '2021-03-11', '190.00', 'Crediário', 18),
(28, '2021-03-11', '106.05', 'Dinheiro', 18),
(29, '2021-03-11', '298.40', 'Dinheiro', 18),
(30, '2021-03-11', '80.20', 'Dinheiro', 18),
(31, '2021-03-11', '17.70', 'Dinheiro', 18),
(32, '2021-03-11', '17.70', 'Dinheiro', NULL),
(33, '2021-03-11', '47.20', 'Crediário', 18),
(34, '2021-03-11', '41.10', 'Cheque', 1),
(35, '2021-03-11', '80.20', 'Cartão de débito', 1),
(36, '2021-03-11', '37.70', 'Dinheiro', 1),
(37, '2021-03-11', '17.70', 'Dinheiro', 6),
(38, '2021-03-11', '48.90', 'Dinheiro', 1),
(39, '2021-03-11', '17.70', 'Dinheiro', 6),
(40, '2021-03-11', '109.30', 'Cartão de débito', 1),
(41, '2021-03-11', '82.45', 'Crediário', 1),
(42, '2021-03-11', '116.70', 'Crediário', 1),
(43, '2021-03-11', '39.70', 'Cartão de crédito', 13),
(44, '2021-03-11', '17.70', 'Dinheiro', 13),
(45, '2021-03-11', '31.65', 'Cartão de crédito', 19),
(46, '2021-03-11', '4.90', 'Dinheiro', 1),
(47, '2021-03-12', '140.00', 'Dinheiro', 1),
(48, '2021-03-12', '73.90', 'Cheque', 19),
(49, '2021-03-12', '8.95', 'Dinheiro', 13),
(50, '2021-03-12', '19.80', 'Dinheiro', NULL),
(51, '2021-03-12', '44.75', 'Cartão de débito', 19),
(52, '2021-03-12', '5.00', 'Dinheiro', 6),
(53, '2021-03-12', '5.00', 'Dinheiro', NULL),
(54, '2021-03-12', '5.00', 'Dinheiro', NULL),
(55, '2021-03-12', '5.00', 'Dinheiro', NULL),
(56, '2021-03-12', '45.00', 'Dinheiro', 19),
(57, '2021-03-12', '25.00', 'Dinheiro', 1),
(58, '2021-03-12', '15.00', 'Dinheiro', 1),
(59, '2021-03-12', '30.00', 'Dinheiro', NULL),
(60, '2021-03-12', '5.00', 'Dinheiro', NULL),
(61, '2021-03-12', '27.80', 'Cheque', NULL),
(62, '2021-03-12', '15.00', 'Dinheiro', NULL),
(63, '2021-03-12', '15.00', 'Dinheiro', NULL),
(64, '2021-03-12', '12.60', 'Dinheiro', NULL),
(65, '2021-03-12', '5.00', 'Dinheiro', NULL),
(66, '2021-03-12', '241.00', 'Cartão de débito', 13),
(67, '2021-03-12', '268.00', 'Dinheiro', NULL),
(68, '2021-03-12', '373.09', 'Cartão de crédito', 20),
(71, '2021-03-12', '5.00', 'Crediário', 19);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`codigo_cliente`);

--
-- Índices de tabela `tb_produto`
--
ALTER TABLE `tb_produto`
  ADD PRIMARY KEY (`codigo_produto`);

--
-- Índices de tabela `tb_venda`
--
ALTER TABLE `tb_venda`
  ADD PRIMARY KEY (`codigo_venda`),
  ADD KEY `codigo_cliente` (`codigo_cliente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  MODIFY `codigo_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `tb_produto`
--
ALTER TABLE `tb_produto`
  MODIFY `codigo_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `tb_venda`
--
ALTER TABLE `tb_venda`
  MODIFY `codigo_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_venda`
--
ALTER TABLE `tb_venda`
  ADD CONSTRAINT `tb_venda_ibfk_1` FOREIGN KEY (`codigo_cliente`) REFERENCES `tb_cliente` (`codigo_cliente`);


