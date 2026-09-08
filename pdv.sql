-- Active: 1765300518651@@localhost@5432
-- Active: 1765300518651@@localhost@5432

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pdv`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `caixa`
--

CREATE TABLE `caixa` (
  `id` int(11) NOT NULL,
  `data_ab` date NOT NULL,
  `hora_ab` time NOT NULL,
  `valor_ab` decimal(8,2) NOT NULL,
  `gerente_ab` int(11) NOT NULL,
  `data_fec` date DEFAULT NULL,
  `hora_fec` time DEFAULT NULL,
  `valor_fec` decimal(8,2) DEFAULT NULL,
  `valor_vendido` decimal(8,2) DEFAULT NULL,
  `valor_quebra` decimal(8,2) DEFAULT NULL,
  `gerente_fec` int(11) DEFAULT NULL,
  `caixa` int(11) NOT NULL,
  `operador` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `caixa`
--

INSERT INTO `caixa` (`id`, `data_ab`, `hora_ab`, `valor_ab`, `gerente_ab`, `data_fec`, `hora_fec`, `valor_fec`, `valor_vendido`, `valor_quebra`, `gerente_fec`, `caixa`, `operador`, `status`) VALUES
(5, '2021-02-22', '10:41:09', '200.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 'Aberto'),
(6, '2021-02-23', '12:16:51', '250.00', 20, NULL, NULL, NULL, NULL, NULL, NULL, 3, 7, 'Aberto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `caixas`
--

CREATE TABLE `caixas` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `caixas`
--

INSERT INTO `caixas` (`id`, `nome`) VALUES
(1, 'Caixa 1'),
(2, 'Caixa 2'),
(3, 'Caixa 3'),
(4, 'Caixa 4'),
(5, 'Caixa 5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `foto` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `foto`) VALUES
(7, 'Alimentícios', '16-02-2021-15-55-33-alimentos.jpg'),
(8, 'Bebidas', '16-02-2021-15-53-33-Bebidas.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `fornecedor` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `compras`
--

INSERT INTO `compras` (`id`, `total`, `data`, `usuario`, `fornecedor`, `pago`) VALUES
(1, '80.00', '2021-02-17', 1, 1, 'Não'),
(2, '40.00', '2021-02-17', 1, 2, 'Sim'),
(3, '300.00', '2021-02-22', 1, 1, 'Não'),
(4, '96.00', '2021-02-22', 1, 1, 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas_pagar`
--

CREATE TABLE `contas_pagar` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `usuario` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `data` date NOT NULL,
  `vencimento` date NOT NULL,
  `arquivo` varchar(150) DEFAULT NULL,
  `id_compra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contas_pagar`
--

INSERT INTO `contas_pagar` (`id`, `descricao`, `valor`, `usuario`, `pago`, `data`, `vencimento`, `arquivo`, `id_compra`) VALUES
(1, 'Conta de Luz', '850.00', 19, 'Não', '2021-02-17', '2021-02-19', '17-02-2021-14-22-47-16-02-2021-18-51-45-conta.jpg', 0),
(2, 'Conta de Água', '660.00', 19, 'Sim', '2021-02-17', '2021-02-18', '17-02-2021-14-23-12-16-02-2021-19-04-35-conta2.png', 0),
(3, 'Pagamento Eletrecista', '180.00', 19, 'Não', '2021-02-17', '2021-02-18', '17-02-2021-14-23-34-16-02-2021-19-20-42-produtos.pdf', 0),
(4, 'Compra de Produtos', '80.00', 1, 'Não', '2021-02-17', '2021-02-17', 'sem-foto.jpg', 1),
(5, 'Compra de Produtos', '40.00', 19, 'Sim', '2021-02-16', '2021-02-17', 'sem-foto.jpg', 2),
(6, 'Conta Teste', '180.00', 19, 'Não', '2021-02-17', '2021-02-20', 'sem-foto.jpg', 0),
(7, 'Conta de Telefone', '280.00', 19, 'Não', '2021-02-17', '2021-02-15', '17-02-2021-15-07-06-16-02-2021-18-55-44-16-02-2021-18-51-45-conta.jpg', 0),
(8, 'Pagamento Encanador', '120.00', 19, 'Não', '2021-02-17', '2021-02-17', 'sem-foto.jpg', 0),
(9, 'Conta de IPTU', '1200.00', 19, 'Sim', '2021-02-17', '2021-02-15', '17-02-2021-15-09-49-16-02-2021-19-20-42-produtos.pdf', 0),
(10, 'Conta Teste', '50.00', 19, 'Sim', '2021-02-17', '2021-02-15', 'sem-foto.jpg', 0),
(11, 'Telefone Fixo', '590.00', 19, 'Sim', '2021-02-17', '2021-02-15', '17-02-2021-15-17-50-16-02-2021-19-04-35-conta2.png', 0),
(12, 'Compra de Produtos', '300.00', 1, 'Não', '2021-02-22', '2021-02-22', 'sem-foto.jpg', 3),
(13, 'Compra de Produtos', '96.00', 1, 'Não', '2021-02-22', '2021-02-22', 'sem-foto.jpg', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas_receber`
--

CREATE TABLE `contas_receber` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `usuario` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `data` date NOT NULL,
  `vencimento` date NOT NULL,
  `arquivo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contas_receber`
--

INSERT INTO `contas_receber` (`id`, `descricao`, `valor`, `usuario`, `pago`, `data`, `vencimento`, `arquivo`) VALUES
(1, 'Marcelo Souza', '200.00', 19, 'Não', '2021-02-17', '2021-02-18', '17-02-2021-14-52-22-16-02-2021-19-20-42-produtos.pdf'),
(2, 'Marcos Silva Cliente', '250.00', 19, 'Não', '2021-02-17', '2021-02-17', 'sem-foto.jpg'),
(3, 'Marcela Silva', '100.00', 19, 'Sim', '2021-02-17', '2021-02-17', 'sem-foto.jpg'),
(4, 'Conta Teste', '150.00', 19, 'Sim', '2021-02-17', '2021-02-15', 'sem-foto.jpg'),
(5, 'Paulo Silva', '180.00', 19, 'Não', '2021-02-17', '2021-02-16', '17-02-2021-15-27-15-16-02-2021-18-55-44-16-02-2021-18-51-45-conta.jpg'),
(6, 'Kamila Silva', '480.00', 19, 'Sim', '2021-02-17', '2021-02-15', '17-02-2021-15-27-28-16-02-2021-19-40-15-produtos.pdf'),
(7, 'Marcela Campos', '650.00', 19, 'Sim', '2021-02-17', '2021-02-10', '17-02-2021-19-11-31-16-02-2021-19-40-32-16-02-2021-19-04-35-conta2.png'),
(8, 'Palema Silva', '890.00', 19, 'Sim', '2021-02-17', '2021-02-17', '17-02-2021-19-12-11-16-02-2021-19-20-42-produtos.pdf');

-- --------------------------------------------------------

--
-- Estrutura da tabela `forma_pgtos`
--

CREATE TABLE `forma_pgtos` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `forma_pgtos`
--

INSERT INTO `forma_pgtos` (`id`, `codigo`, `nome`) VALUES
(1, 1, 'Dinheiro'),
(2, 2, 'Cartão de Crédito'),
(3, 3, 'Cartão de Débito');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `tipo_pessoa` varchar(10) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `nome`, `tipo_pessoa`, `cpf`, `email`, `telefone`, `endereco`) VALUES
(1, 'Marcos Silva', 'Física', '097.555.456-99', 'marcos@hotmail.com', '(33) 33333-3333', ''),
(2, 'Patrícia Silva', 'Júridica', '55555555', 'patricia@hotmail.com', '(66) 66666-5444', 'Rua 5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_venda`
--

CREATE TABLE `itens_venda` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `valor_unitario` decimal(8,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor_total` decimal(8,2) NOT NULL,
  `usuario` int(11) NOT NULL,
  `venda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `itens_venda`
--

INSERT INTO `itens_venda` (`id`, `produto`, `valor_unitario`, `quantidade`, `valor_total`, `usuario`, `venda`) VALUES
(85, 4, '8.00', 3, '24.00', 2, 9),
(99, 4, '8.00', 1, '8.00', 2, 9),
(101, 4, '8.00', 1, '8.00', 2, 9),
(102, 7, '3.80', 1, '3.80', 2, 9),
(125, 4, '8.00', 1, '8.00', 2, 9),
(126, 4, '8.00', 1, '8.00', 2, 9),
(127, 4, '8.00', 1, '8.00', 2, 9),
(128, 4, '8.00', 1, '8.00', 2, 9),
(129, 4, '8.00', 1, '8.00', 2, 9),
(130, 4, '8.00', 1, '8.00', 2, 9),
(145, 4, '8.00', 1, '8.00', 2, 14),
(146, 7, '3.80', 1, '3.80', 2, 15),
(147, 4, '8.00', 1, '8.00', 2, 16),
(148, 4, '8.00', 1, '8.00', 2, 0),
(149, 9, '0.99', 1, '0.99', 2, 0),
(151, 8, '22.99', 1, '22.99', 2, 0),
(152, 7, '3.80', 1, '3.80', 2, 0),
(153, 4, '8.00', 1, '8.00', 7, 17),
(154, 7, '3.80', 1, '3.80', 7, 17),
(155, 9, '0.99', 1, '0.99', 7, 17),
(156, 8, '22.99', 1, '22.99', 7, 17),
(157, 7, '3.80', 3, '11.40', 7, 17),
(158, 7, '3.80', 1, '3.80', 7, 18),
(159, 4, '8.00', 1, '8.00', 7, 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `movimentacoes`
--

CREATE TABLE `movimentacoes` (
  `id` int(11) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `usuario` int(11) NOT NULL,
  `data` date NOT NULL,
  `id_mov` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `movimentacoes`
--

INSERT INTO `movimentacoes` (`id`, `tipo`, `descricao`, `valor`, `usuario`, `data`, `id_mov`) VALUES
(1, 'Saída', 'Conta de Água', '660.00', 19, '2021-02-17', 2),
(2, 'Entrada', 'Marcela Silva', '100.00', 19, '2021-02-17', 3),
(3, 'Saída', 'Conta Teste', '50.00', 19, '2021-02-17', 10),
(4, 'Saída', 'Telefone Fixo', '590.00', 19, '2021-02-17', 11),
(5, 'Saída', 'Compra de Produtos', '40.00', 19, '2021-02-17', 5),
(6, 'Entrada', 'Conta Teste', '150.00', 19, '2021-02-17', 4),
(7, 'Entrada', 'Palema Silva', '890.00', 19, '2021-02-15', 8),
(8, 'Entrada', 'Marcela Campos', '650.00', 19, '2021-02-17', 7),
(9, 'Saída', 'Conta de IPTU', '1200.00', 19, '2021-02-17', 9),
(10, 'Entrada', 'Kamila Silva', '480.00', 19, '2021-02-17', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `estoque` int(11) NOT NULL,
  `valor_compra` decimal(8,2) NOT NULL,
  `valor_venda` decimal(8,2) NOT NULL,
  `fornecedor` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `foto` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `codigo`, `nome`, `descricao`, `estoque`, `valor_compra`, `valor_venda`, `fornecedor`, `categoria`, `foto`) VALUES
(4, '123', 'Feijão Carioca', 'Feijão Carioca 1 KG', 109, '5.00', '8.00', 2, 7, '16-02-2021-15-55-13-feijão.jpg'),
(7, '321', 'Coca Cola Lata', 'Regrigerante Coca-Cola Lata 350 ML', 109, '4.00', '3.80', 1, 8, '16-02-2021-15-54-33-refrilata.jpg'),
(8, '7896004744971', 'Arroz Prato Fino', 'Arroz Prato Fino 5 KG', 16, '15.00', '22.99', 1, 7, '22-02-2021-18-42-51-arroz.jpg'),
(9, '7897933621227', 'Suco em Pó', 'Suco em Pó Tang 95 Gramas', 118, '0.80', '0.99', 1, 8, '22-02-2021-21-00-56-suco-em-po.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `nivel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `cpf`, `senha`, `nivel`) VALUES
(1, 'Administrador', 'admin@hotmail.com', '000.000.000-00', '123', 'Administrador'),
(2, 'Marcela Campos', 'marcela@hotmail.com', '111.111.111-11', '123', 'Operador'),
(5, 'Bianca Freitas', 'paloma2@hotmail.com', '265.265.656-56', '123', 'Tesoureiro'),
(6, 'Paloma Freitas', 'paloma3@hotmail.com', '265.265.656-58', '123', 'Tesoureiro'),
(7, 'Mauricio', 'mauricio@hotmail.com', '031.554.514-54', '123', 'Operador'),
(16, 'Sabrina ', 'sabrinasilva@hotmail.com', '000.000.000-01', '1234', 'Operador'),
(19, 'Tesoureiro Teste', 'tesoureiro@hotmail.com', '123.456.985-52', '123', 'Tesoureiro'),
(20, 'Gerente Teste', 'gerente@hotmail.com', '255.555.555-55', '123', 'Administrador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `operador` int(11) NOT NULL,
  `valor_recebido` decimal(8,2) NOT NULL,
  `desconto` varchar(20) NOT NULL,
  `troco` decimal(8,2) NOT NULL,
  `forma_pgto` int(11) NOT NULL,
  `abertura` int(11) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `valor`, `data`, `hora`, `operador`, `valor_recebido`, `desconto`, `troco`, `forma_pgto`, `abertura`, `status`) VALUES
(8, '137.40', '2021-02-23', '10:59:41', 2, '150.00', 'R$ 10,00', '12.60', 1, 5, 'Concluída'),
(9, '81.80', '2021-02-23', '11:10:15', 2, '100.00', 'R$ 10,00', '18.20', 1, 5, 'Concluída'),
(10, '0.00', '2021-02-23', '11:10:50', 2, '0.00', 'R$ 0,00', '0.00', 1, 5, 'Concluída'),
(11, '0.00', '2021-02-23', '11:29:00', 2, '0.00', 'R$ 0,00', '0.00', 1, 5, 'Concluída'),
(12, '0.00', '2021-02-23', '11:35:04', 2, '0.00', 'R$ 0,00', '0.00', 1, 5, 'Concluída'),
(13, '0.00', '2021-02-23', '11:37:11', 2, '0.00', 'R$ 0,00', '0.00', 1, 5, 'Concluída'),
(14, '8.00', '2021-02-23', '11:44:49', 2, '8.00', 'R$ 0,00', '0.00', 1, 5, 'Concluída'),
(15, '3.80', '2021-02-23', '11:45:19', 2, '3.80', 'R$ 0,00', '0.00', 1, 5, 'Concluída'),
(16, '7.00', '2021-02-23', '11:48:23', 2, '10.00', 'R$ 1,00', '3.00', 2, 5, 'Concluída'),
(17, '42.18', '2021-02-23', '12:20:09', 7, '50.00', 'R$ 5,00', '7.82', 1, 6, 'Concluída'),
(18, '10.62', '2021-02-23', '12:20:53', 7, '15.00', '10%', '4.38', 1, 6, 'Concluída');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `caixa`
--
ALTER TABLE `caixa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `caixas`
--
ALTER TABLE `caixas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contas_receber`
--
ALTER TABLE `contas_receber`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `forma_pgtos`
--
ALTER TABLE `forma_pgtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `caixa`
--
ALTER TABLE `caixa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `caixas`
--
ALTER TABLE `caixas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `contas_receber`
--
ALTER TABLE `contas_receber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `forma_pgtos`
--
ALTER TABLE `forma_pgtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
