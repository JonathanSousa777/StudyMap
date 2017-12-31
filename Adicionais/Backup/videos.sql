-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.17-log - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando dados para a tabela studymap.rotinadiaria: ~59 rows (aproximadamente)
/*!40000 ALTER TABLE `rotinadiaria` DISABLE KEYS */;
INSERT INTO `rotinadiaria` (`id`, `concluida`, `descricao`, `dia_semana`, `duracao`, `hora_inicial`) VALUES
	(152, b'0', 'Curso JavaEE', 'MONDAY', 45, '15:10:00'),
	(153, b'0', 'Joomla', 'MONDAY', 30, '16:00:00'),
	(154, b'0', 'Duolingo', 'MONDAY', 20, '16:45:00'),
	(155, b'0', 'Curso JavaEE', 'MONDAY', 30, '18:00:00'),
	(156, b'0', 'Flyway', 'MONDAY', 15, '18:45:00'),
	(157, b'0', 'Produção Sistema', 'MONDAY', 30, '19:30:00'),
	(158, b'0', 'Produção Sistemas', 'MONDAY', 20, '20:10:00'),
	(159, b'0', 'Joomla', 'MONDAY', 35, '20:45:00'),
	(160, b'0', 'Estudo Joomla', 'MONDAY', 25, '21:30:00'),
	(161, b'0', 'Começando com JS', 'MONDAY', 25, '23:00:00'),
	(162, b'0', 'Manutenção Sistemas', 'MONDAY', 45, '23:45:00'),
	(163, b'1', 'Curso Ingles', 'TUESDAY', 30, '00:45:00'),
	(164, b'1', 'Estudo Java EE', 'TUESDAY', 40, '01:20:00'),
	(165, b'1', 'Ingles Oracle', 'TUESDAY', 15, '02:15:00'),
	(166, b'1', '7ec', 'TUESDAY', 40, '17:20:00'),
	(167, b'0', 'Curso MEAN', 'TUESDAY', 30, '18:20:00'),
	(168, b'0', 'Curso Joomla', 'TUESDAY', 30, '19:30:00'),
	(169, b'0', 'Estudo MEAN', 'TUESDAY', 20, '20:30:00'),
	(170, b'0', 'Duolingo', 'TUESDAY', 20, '21:00:00'),
	(171, b'0', 'Certificação Oracle', 'TUESDAY', 20, '21:40:00'),
	(172, b'1', '7ec', 'WEDNESDAY', 30, '14:40:00'),
	(173, b'1', 'Curso JavaEE', 'WEDNESDAY', 30, '15:30:00'),
	(174, b'0', 'Estudo JavaEE', 'WEDNESDAY', 20, '22:10:00'),
	(175, b'0', 'Engenharia de Software', 'WEDNESDAY', 25, '22:45:00'),
	(176, b'0', 'Joomla', 'WEDNESDAY', 30, '23:30:00'),
	(177, b'0', 'Carreira PHP', 'THURSDAY', 45, '00:30:00'),
	(178, b'0', 'Estudo CarreiraPHP', 'THURSDAY', 20, '01:30:00'),
	(179, b'0', 'Bootsfaces', 'THURSDAY', 30, '02:00:00'),
	(180, b'0', 'Curso MEAN', 'THURSDAY', 30, '14:30:00'),
	(181, b'0', 'Livro MEAN', 'THURSDAY', 30, '15:15:00'),
	(182, b'0', 'Bíblia', 'THURSDAY', 25, '02:35:00'),
	(183, b'0', 'Duolingo', 'THURSDAY', 20, '16:00:00'),
	(184, b'0', 'Curso JavaEE', 'THURSDAY', 45, '18:00:00'),
	(185, b'0', 'Curso Ingles', 'THURSDAY', 30, '19:00:00'),
	(186, b'0', 'Estudo Sistema Feito', 'THURSDAY', 20, '19:45:00'),
	(187, b'0', 'Estudo JavaEE', 'THURSDAY', 30, '20:30:00'),
	(188, b'0', 'Estudo MEAN', 'THURSDAY', 20, '22:00:00'),
	(189, b'0', 'Tradução texto Ingles', 'THURSDAY', 40, '22:40:00'),
	(190, b'0', 'High Faces', 'THURSDAY', 30, '23:50:00'),
	(191, b'0', 'Criação Sistemas', 'FRIDAY', 40, '01:00:00'),
	(192, b'0', 'Manutenção Sistemas', 'FRIDAY', 20, '02:00:00'),
	(193, b'0', 'Bíblia', 'FRIDAY', 25, '02:30:00'),
	(194, b'0', 'Carreira PHP', 'FRIDAY', 30, '03:00:00'),
	(195, b'0', 'Estudo Carreira PHP', 'FRIDAY', 20, '22:30:00'),
	(196, b'0', 'Duolingo', 'FRIDAY', 20, '23:20:00'),
	(197, b'1', '7ec', 'SATURDAY', 30, '13:30:00'),
	(198, b'0', 'Estudo CarreiraPHP', 'SATURDAY', 30, '14:15:00'),
	(199, b'0', 'Curso Java EE', 'SATURDAY', 30, '22:30:00'),
	(200, b'0', 'Joomla', 'SATURDAY', 30, '23:20:00'),
	(201, b'1', 'Design Pattern', 'SUNDAY', 40, '00:20:00'),
	(202, b'1', 'Revisão MEAN', 'SUNDAY', 30, '01:15:00'),
	(203, b'1', 'Revisão Joomla', 'SUNDAY', 30, '02:00:00'),
	(204, b'1', 'Duolingo', 'SUNDAY', 20, '02:30:00'),
	(205, b'1', 'Manutenção Sistemas', 'SUNDAY', 30, '13:30:00'),
	(206, b'1', 'Livro MEAN', 'SUNDAY', 30, '14:10:00'),
	(207, b'1', 'Tira Dúvidas Ingles', 'SUNDAY', 30, '22:30:00'),
	(208, b'1', 'Traduzir texto Ingles', 'SUNDAY', 30, '23:10:00'),
	(209, b'1', 'Ingles Oracle', 'SUNDAY', 20, '23:40:00'),
	(210, b'1', 'Biblia', 'SUNDAY', 20, '00:10:00'),
	(211, b'1', 'Revisão JavaEE', 'SUNDAY', 30, '14:40:00');
/*!40000 ALTER TABLE `rotinadiaria` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
