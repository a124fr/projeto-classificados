-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3304
-- Tempo de geração: 18-Maio-2020 às 00:48
-- Versão do servidor: 8.0.18
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto_classificados`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anuncios`
--

DROP TABLE IF EXISTS `anuncios`;
CREATE TABLE IF NOT EXISTS `anuncios` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `valor` float NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `anuncios`
--

INSERT INTO `anuncios` (`id`, `id_usuario`, `id_categoria`, `titulo`, `descricao`, `valor`, `estado`) VALUES
(2, 3, 2, 'Sete mares', 'Roupa de marca, sete mares', 80, 1),
(3, 2, 1, 'Hubblot Editado', 'Algum anúncios legal', 300, 2),
(4, 2, 2, 'Casaco', 'Descrição luxuosa do casaco', 100, 0),
(5, 2, 4, 'Ferrari', 'carro esportivo', 50, 1),
(6, 2, 2, 'camiseta', 'camiseta para o verão', 85, 1),
(7, 2, 2, 'jeans', 'calça jeans', 100, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `anuncios_imagens`
--

DROP TABLE IF EXISTS `anuncios_imagens`;
CREATE TABLE IF NOT EXISTS `anuncios_imagens` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_anuncio` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `anuncios_imagens`
--

INSERT INTO `anuncios_imagens` (`id`, `id_anuncio`, `url`) VALUES
(3, 3, '8546abd113418932952ea3585be1e42f.jpg'),
(4, 3, '6f53acde93b9d083307214eae49ff555.jpg'),
(5, 3, '8dd413f0a445cd31f3f8d526fd18cb7b.jpg'),
(6, 4, '163f326f63a1c964919b77fda87e1f1f.jpg'),
(7, 5, 'd408e201261d28255697d2f34aa72bce.jpg'),
(8, 5, '7fead321c63df0b828ca2127fc446776.jpg'),
(9, 5, 'dcab06455c680d1762919dfd5d75cd5e.jpg'),
(12, 2, '23484ec211662e2a93d82352129a8315.jpg'),
(13, 6, '2ac3caaba0ab655de4aed579cac1990e.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(1, 'Relógios'),
(2, 'Roupas'),
(3, 'Eletrônicos'),
(4, 'Carros');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `telefone`) VALUES
(1, 'Bonieky', 'suporte@b7web.com.br', '202cb962ac59075b964b07152d234b70', '99999999'),
(2, 'francisco', 'a124fr@gmail.com', 'a577534b4a5d2616b31a86e25090992f', '5561995243469'),
(3, 'João Gabriel', 'joao@gmail.com', '202cb962ac59075b964b07152d234b70', '5561995243469');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
