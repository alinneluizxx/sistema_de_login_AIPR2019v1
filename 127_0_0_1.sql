-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Set-2019 às 16:44
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistemadelogin`
--
DROP DATABASE IF EXISTS `sistemadelogin`;
CREATE DATABASE IF NOT EXISTS `sistemadelogin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `sistemadelogin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `nomeUsuario` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `senha` char(40) COLLATE utf8mb4_bin NOT NULL,
  `dataCriacao` datetime NOT NULL,
  `avatar_url` varchar(200) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nome`, `nomeUsuario`, `email`, `senha`, `dataCriacao`, `avatar_url`) VALUES
(1, 'aline gullich', 'aline13', 'aline13@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 13:39:27', ''),
(2, 'luis felipe', 'luis123', 'luis1@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 14:21:36', ''),
(3, 'luis felipe', 'luis125', 'luis@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 14:37:00', ''),
(4, 'aline luiza', 'aline18', 'aline_luiza@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:08:58', 'https://www.who.com.au/media/42889/celebrity.jpg?width=640'),
(5, 'aline luiza gullich', 'aline luiza', 'alinelui@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:18:57', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQdxJpZRUkbo7jZQE7pTMgMDTQF4Qlk6Pnrt6E7xdE3WQdLYDmrw'),
(6, 'maria antonieta', 'maria123', 'maria@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:23:55', 'http://www.fashiondesignweeks.com/wp-content/uploads/2014/05/Most-Famous-Style-Icons-of-All-Time-Marilyn-Monroe-Fashion-Design-Weeks.jpg'),
(7, 'Kendall Jenner', 'Kendall', 'Kendall@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:27:19', 'https://66.media.tumblr.com/5cb6c9e2ca63e3876a8b0565fe742918/tumblr_o1dccwgg8f1u7ll4wo7_250.png'),
(8, 'Kendall Jenner', 'Kendall12', 'Kendall1@gmail.com', '32c784017641f6eda83fb7c7cb31dca70f36b938', '2019-09-06 16:32:07', 'https://66.media.tumblr.com/5cb6c9e2ca63e3876a8b0565fe742918/tumblr_o1dccwgg8f1u7ll4wo7_250.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
