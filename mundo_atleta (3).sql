-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Out-2023 às 05:04
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mundo_atleta`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(8, 'vini', 'vinifvasquez@gmail.com', '$2y$10$36iluAfudeepkjw6umduZeFpGSfnAt/H8UWWoA8vpA5xNQ6edbnZ6', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(7, 'Nike'),
(8, 'Adidas'),
(11, 'Puma');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 6, '::1', 3, 1),
(45, 14, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(13, 'Beach tênis'),
(15, 'Ciclismo'),
(16, 'Futebol'),
(17, 'Vôlei'),
(19, 'Atletismo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(9, 15, 7, 'Tênis preto Nike ', 279, 1, 'Tenha uma boa aparência, sinta-se bem. É fácil com o conjunto de treino PUMA Feel Good. Um agasalho de ajuste regular é bonito e macio, com bolsos cargo e marca PUMA na perna e no peito.', '1697893212_WhatsApp Image 2023-10-19 at 16.52.18.jpeg', 'Tênis'),
(10, 16, 11, 'CHUTEIRA KING ULTIMATE CAMPO', 179, 1, 'Controlar nunca foi tão confortável. Um ícone que atravessa gerações, o KING está de volta com atualizações de design arrojadas e materiais inovadores que funcionam melhor – para o jogador e para o planeta.', '1697889372_WhatsApp Image 2023-10-19 at 17.01.39.jpeg', 'Chuteira'),
(11, 13, 8, 'Camisa Azul claro ', 149, 1, 'Tenha uma boa aparência, sinta-se bem. É fácil com o conjunto de treino PUMA Feel Good. Um agasalho de ajuste regular é bonito e macio, com bolsos cargo e marca PUMA na perna e no peito.', '1697891315_WhatsApp Image 2023-10-19 at 17.13.23.jpeg', 'Camisa'),
(12, 19, 8, 'MEIAS CANO ALTO 3 PARES', 109, 3, 'Seja para treinar no dia a dia ou arrasar em um grande evento, estas meias adidas de cano alto garantem o conforto dos seus pés. Elas envolvem o arco do pé e amortecem as áreas de alta pressão nos calcanhares e dedos.', '1697864740_WhatsApp Image 2023-10-19 at 17.14.01.jpeg', 'Meias'),
(14, 19, 8, '3 pares de meias cano alto preta ', 99, 3, 'Seja para treinar no dia a dia ou arrasar em um grande evento, estas meias adidas de cano alto garantem o conforto dos seus pés. Elas envolvem o arco do pé e amortecem as áreas de alta pressão nos calcanhares e dedos.', '1697864868_WhatsApp Image 2023-10-19 at 17.14.09.jpeg', 'Meias'),
(16, 15, 8, 'CAMISETA OWN THE RUN PRETO', 169, 1, 'FRESCOR E RESPIRABILIDADE DURANTE A CORRIDA\r\nA vida está ficando cada vez mais estressante e complicada. Alguns dias você não sente que tem tempo ou energia para correr. Simplifique as coisas com esta camiseta adidas Own the Run. Ela é macia, confortável e de secagem rápida. Além disso, é feita com materiais reciclados, parte do compromisso da adidas de criar um futuro mais sustentável. Assim, você pode se orgulhar da camiseta que veste enquanto vence os quilômetros.', '1697864953_WhatsApp Image 2023-10-19 at 17.13.50.jpeg', 'Camisa'),
(17, 13, 11, 'Shorts preto Puma', 139, 1, 'Tenha uma boa aparência, sinta-se bem. É fácil com o conjunto de treino PUMA Feel Good. Um agasalho de ajuste regular é bonito e macio, com bolsos cargo e marca PUMA na perna e no peito.', '1697892728_WhatsApp Image 2023-10-19 at 16.49.08.jpeg', 'Shorts'),
(18, 19, 8, 'SHORTS MOLETOM ADICOLOR ', 129, 1, 'Experimente o poder do três com o Trefoil 3D e as Três Listras deste shorts. Confeccionado em fleece macio e confortável, perfeito para mostrar seu estilo nas ruas ou relaxar no sofá.', '1697865067_WhatsApp Image 2023-10-19 at 17.13.07.jpeg', 'Shorts'),
(19, 13, 8, 'Camisa atletismo azul', 129, 1, 'Tenha uma boa aparência, sinta-se bem. É fácil com o conjunto de treino PUMA Feel Good. Um agasalho de ajuste regular é bonito e macio, com bolsos cargo e marca PUMA na perna e no peito.', '1697890921_WhatsApp Image 2023-10-19 at 17.13.38.jpeg', 'Camisa'),
(20, 19, 8, 'TÊNIS CAMPUS 00S', 199, 1, 'O tênis adidas Campus tem sido um ícone de longa data no nosso cenário cultural. Embora tenha feito sua estreia nas quadras, ele rapidamente assumiu todos os outros lugares. Com este tênis Campus 00s, colocamos essa silhueta icônica em outra direção, fazendo um remix às cores universitárias originais e brincando com proporções maiores. Ele é feito com cabedal de suede premium em tons desbotados, sobre uma entressola off-white ', '1697865211_WhatsApp Image 2023-10-19 at 17.11.20.jpeg', 'Tênis'),
(22, 15, 7, 'Nike Dry Academy 21', 149, 1, 'Tecido de poliéster de elevado desempenho e de microfibra que absorve o suor do corpo para a superfície do tecido, onde se evapora e permite sentir-se seco e confortável.', '1697890365_WhatsApp Image 2023-10-19 at 17.04.39.jpeg', 'Camisa'),
(24, 17, 11, 'TÊNIS EXOTEK NITRO MASCULINO', 599, 1, 'Ciência e roupas esportivas convergem com o Extotek NITRO™. Construídos usando a engenharia precisa em nossa linha de corrida de desempenho, esses tênis exploram a funcionalidade visível e o futurismo por meio de uma estética tecnológica pura.', '1697889629_WhatsApp Image 2023-10-19 at 16.59.41.jpeg', 'Tênis'),
(25, 13, 7, 'Conjuto de poloesportivo', 149, 1, 'Tenha uma boa aparência, sinta-se bem. É fácil com o conjunto de treino PUMA Feel Good. Um agasalho de ajuste regular é bonito e macio, com bolsos cargo e marca PUMA na perna e no peito.', '1697892433_WhatsApp Image 2023-10-19 at 16.58.58 (1).jpeg', 'Camisa'),
(26, 13, 7, 'Shorts rosa Nike', 109, 1, 'Junto com a evolução dos esportes, as roupas utilizadas melhoraram na mesma velocidade são as roupas térmicas que ajudam no desempenho do jogador, corredor, ciclista, etc... aderindo ao corpo e não deixando o calor se dissipar mais rápido.', '1697890414_WhatsApp Image 2023-10-19 at 16.58.36.jpeg', 'Shorts'),
(27, 15, 11, 'Blusa azul e branco Puma', 229, 1, 'Tenha uma boa aparência, sinta-se bem. É fácil com o conjunto de treino PUMA Feel Good. Um agasalho de ajuste regular é bonito e macio, com bolsos cargo e marca PUMA na perna e no peito.', '1697893093_WhatsApp Image 2023-10-19 at 16.54.33.jpeg', 'Blusa'),
(28, 17, 8, 'Shorts preto Adidas', 109, 1, 'Junto com a evolução dos esportes, as roupas utilizadas melhoraram na mesma velocidade são as roupas térmicas que ajudam no desempenho do jogador, corredor, ciclista, etc... aderindo ao corpo e não deixando o calor se dissipar mais rápido.', '1697890487_WhatsApp Image 2023-10-19 at 17.12.31.jpeg', 'Camisa'),
(29, 17, 7, 'Tênis preto', 219, 1, 'Tenha uma boa aparência, sinta-se bem. É fácil com o conjunto de treino PUMA Feel Good. Um agasalho de ajuste regular é bonito e macio, com bolsos cargo e marca PUMA na perna e no peito.', '1697892019_WhatsApp Image 2023-10-19 at 16.44.23.jpeg', 'Tênis'),
(30, 19, 7, 'Camisa Nike Manga Longa Basic', 179, 2, 'Junto com a evolução dos esportes, as roupas utilizadas melhoraram na mesma velocidade são as roupas térmicas que ajudam no desempenho do jogador, corredor, ciclista, etc... aderindo ao corpo e não deixando o calor se dissipar mais rápido.', '1697861425_WhatsApp Image 2023-10-19 at 17.07.20 (1).jpeg', 'Camisa'),
(31, 19, 11, 'Camisa térmica Puma', 139, 1, 'Tenha uma boa aparência, sinta-se bem. É fácil com o conjunto de treino PUMA Feel Good. Um agasalho de ajuste regular é bonito e macio, com bolsos cargo e marca PUMA na perna e no peito.', '1697859998_WhatsApp Image 2023-10-19 at 17.04.48.jpeg', 'Camisa'),
(32, 16, 11, 'CHuteira preto Puma', 219, 1, 'Junto com a evolução dos esportes, as roupas utilizadas melhoraram na mesma velocidade são as roupas térmicas que ajudam no desempenho do jogador, corredor, ciclista, etc... aderindo ao corpo e não deixando o calor se dissipar mais rápido.', '1697892573_WhatsApp Image 2023-10-19 at 16.45.09.jpeg', 'Camisa'),
(33, 19, 11, 'TÊNIS SLIPSTREAM BBALL', 200, 1, 'Esta versão do Slipstream presta homenagem às raízes da silhueta na quadra de basquete. Seu design apresenta uma parte superior de couro limpo com toques de cores menores. Esta execução apresenta uma base de couro, uma tira feita com materiais sintético com subcamada, bem como subcamadas de materiais sintéticos no ilhós, gáspea e calcanhar como detalhes principais.', '1697889474_WhatsApp Image 2023-10-19 at 17.00.26.jpeg', 'Tênis'),
(34, 16, 11, 'Shorts azul Puma', 89, 1, 'Junto com a evolução dos esportes, as roupas utilizadas melhoraram na mesma velocidade são as roupas térmicas que ajudam no desempenho do jogador, corredor, ciclista, etc... aderindo ao corpo e não deixando o calor se dissipar mais rápido.', '1697892845_WhatsApp Image 2023-10-19 at 16.48.08.jpeg', 'Shorts'),
(35, 16, 11, 'CHUTEIRA SOCIETY FUTURE MATCH+ TT MID BDP JUVENIL', 239, 1, 'FUTURE MATCH chegou para você deixá-los loucos. Possui cabedal FUZIONFIT360 com suporte PWRTAPE oferecendo mais estabilidade para cortes rápidos e mudanças de ritmo. O Dynamic Motion System oferece mais suporte no calcanhar, mais flexibilidade no antepé e mais tração em todas as direções. ', '1697889241_WhatsApp Image 2023-10-19 at 17.02.45.jpeg', 'Chuteira'),
(36, 19, 11, 'Blusa verde Puma', 189, 1, 'Junto com a evolução dos esportes, as roupas utilizadas melhoraram na mesma velocidade são as roupas térmicas que ajudam no desempenho do jogador, corredor, ciclista, etc... aderindo ao corpo e não deixando o calor se dissipar mais rápido.', '1697891745_WhatsApp Image 2023-10-19 at 16.53.20.jpeg', 'Blusa'),
(37, 16, 11, 'CHUTEIRA FUTURE PLAY IT JUVENIL', 245, 1, ' FUTURE PLAY chegou para você deixá-los loucos. Possui cabedal macio e com maior suporte que o mantém seguro para fazer cortes rápidos e mudanças de ritmo. O Dynamic Motion System oferece mais suporte no calcanhar, mais flexibilidade no antepé e mais tração em todas as direções.', '1697889151_WhatsApp Image 2023-10-19 at 17.03.22.jpeg', 'Chuteira'),
(38, 16, 8, 'Camisa Adidas azul', 219, 1, 'Junto com a evolução dos esportes, as roupas utilizadas melhoraram na mesma velocidade são as roupas térmicas que ajudam no desempenho do jogador, corredor, ciclista, etc... aderindo ao corpo e não deixando o calor se dissipar mais rápido.', '1697891397_WhatsApp Image 2023-10-19 at 17.10.42 (1).jpeg', 'Chuteira');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(3, 'vini', 'fvas', 'vinifvasquez@gmail.com', '3fd59e2ff53f5f21b7629d65d5618481', '1199438844', 'bhbjd', 'ncjdcn'),
(4, 'matheus', 'Castilho', 'punhetinha69@gmail.com', '605099592321d859499bf025f5212592', '1199438844', 'bhbjd', 'ncjdcn'),
(5, 'pedro', 'lima', 'teste@gmail.com', '576830f3fe89811c0def28290f4398a9', '4444444444', 'adas', 'asdas');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Índices para tabela `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Índices para tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Índices para tabela `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
