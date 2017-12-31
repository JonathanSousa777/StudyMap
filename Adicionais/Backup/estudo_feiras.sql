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

-- Copiando dados para a tabela studymap.rotinadiaria: ~60 rows (aproximadamente)
/*!40000 ALTER TABLE `rotinadiaria` DISABLE KEYS */;
INSERT INTO `rotinadiaria` (`id`, `concluida`, `descricao`, `dia_semana`, `duracao`, `hora_inicial`) VALUES
	(212, b'0', 'Curso JavaEE', 'MONDAY', 45, '15:10:00'),
	(213, b'0', 'Joomla', 'MONDAY', 30, '16:00:00'),
	(214, b'0', 'Duolingo', 'MONDAY', 20, '16:45:00'),
	(215, b'0', 'Curso JavaEE', 'MONDAY', 30, '18:00:00'),
	(216, b'0', 'Flyway', 'MONDAY', 20, '18:45:00'),
	(217, b'0', 'Criação de Sistemas', 'MONDAY', 50, '19:30:00'),
	(218, b'0', 'Joomla', 'MONDAY', 35, '20:45:00'),
	(219, b'0', 'Estudo Joomla', 'MONDAY', 25, '21:30:00'),
	(220, b'0', 'Começando com JS', 'MONDAY', 25, '23:00:00'),
	(221, b'0', 'Manutenção de Sistemas', 'MONDAY', 30, '23:45:00'),
	(222, b'0', 'Curso Inglês', 'TUESDAY', 30, '00:45:00'),
	(223, b'0', 'Estudo JavaEE', 'TUESDAY', 40, '01:20:00'),
	(224, b'0', 'Ingles Oracle', 'TUESDAY', 15, '02:15:00'),
	(225, b'0', 'Duolingo', 'TUESDAY', 20, '15:00:00'),
	(226, b'0', '7ec', 'TUESDAY', 40, '23:10:00'),
	(227, b'0', 'Bíblia', 'TUESDAY', 20, '23:50:00'),
	(228, b'0', '7ec', 'WEDNESDAY', 30, '14:00:00'),
	(229, b'0', 'Duolingo', 'WEDNESDAY', 20, '14:30:00'),
	(230, b'0', 'Curso JavaEE', 'WEDNESDAY', 30, '15:00:00'),
	(231, b'0', 'Estudo JavaEE', 'WEDNESDAY', 20, '16:00:00'),
	(232, b'0', 'Joomla', 'WEDNESDAY', 40, '16:30:00'),
	(233, b'0', 'Curso Ingles', 'WEDNESDAY', 30, '17:30:00'),
	(234, b'0', 'Engenharia de Software', 'WEDNESDAY', 25, '23:00:00'),
	(235, b'0', 'Joomla', 'THURSDAY', 30, '00:10:00'),
	(236, b'0', 'Carreira PHP', 'THURSDAY', 20, '00:50:00'),
	(237, b'0', 'Bíblia', 'THURSDAY', 20, '01:15:00'),
	(238, b'0', 'Estudo CarreiraPHP', 'THURSDAY', 20, '01:40:00'),
	(239, b'0', 'Curso MEAN', 'THURSDAY', 30, '02:10:00'),
	(240, b'0', 'Livro MEAN', 'THURSDAY', 30, '23:10:00'),
	(241, b'0', 'Duolingo', 'THURSDAY', 20, '23:45:00'),
	(242, b'0', 'Curso JavaEE', 'FRIDAY', 45, '00:15:00'),
	(243, b'0', '7ec', 'FRIDAY', 30, '01:15:00'),
	(244, b'0', 'Estudo MEAN', 'FRIDAY', 20, '02:00:00'),
	(245, b'0', 'Manutenção Sistemas', 'FRIDAY', 20, '02:30:00'),
	(246, b'0', 'Criação de Sistemas', 'FRIDAY', 40, '14:00:00'),
	(247, b'0', 'Duolingo', 'FRIDAY', 20, '15:00:00'),
	(248, b'0', 'Joomla', 'FRIDAY', 30, '15:30:00'),
	(249, b'0', 'Estudo Joomla', 'FRIDAY', 20, '16:10:00'),
	(250, b'0', 'Desing Pattern', 'FRIDAY', 40, '23:10:00'),
	(251, b'0', 'Bíblia', 'FRIDAY', 20, '23:55:00'),
	(252, b'0', 'Livro MEAN', 'SATURDAY', 30, '00:15:00'),
	(253, b'0', 'Curso JavaEE', 'SATURDAY', 35, '01:00:00'),
	(254, b'0', 'Estudo JavaEE', 'SATURDAY', 10, '01:50:00'),
	(255, b'0', 'Curso MEAN', 'SATURDAY', 30, '02:20:00'),
	(256, b'0', 'HighFaces', 'SATURDAY', 30, '14:30:00'),
	(257, b'0', 'Duolingo', 'SATURDAY', 20, '15:10:00'),
	(258, b'0', 'Texto Ingles', 'SATURDAY', 25, '23:10:00'),
	(259, b'0', 'Estudo Projetos Feitos', 'SATURDAY', 30, '23:50:00'),
	(260, b'0', 'Dúvidas Ingles', 'SUNDAY', 20, '00:30:00'),
	(261, b'0', 'Livro MEAN', 'SUNDAY', 25, '01:00:00'),
	(262, b'0', 'Manutenção Sistemas', 'SUNDAY', 20, '01:30:00'),
	(263, b'0', 'Criação de Sistemas', 'SUNDAY', 30, '02:00:00'),
	(264, b'0', 'Estudo Oracle', 'SUNDAY', 20, '02:30:00'),
	(265, b'0', 'Duolingo', 'SUNDAY', 20, '13:30:00');
/*!40000 ALTER TABLE `rotinadiaria` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
