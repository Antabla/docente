--
-- Database: `docente_db`
--

CREATE DATABASE IF NOT EXISTS `docente_db`;
USE `docente_db`;


-- ENTITIES

--
-- Struttura della tabella `estudiante`
--

CREATE TABLE IF NOT EXISTS `estudiante` (
	`apelidos` varchar(130) ,
	`id_user` int  NOT NULL,
	`identificacion` varchar(130) ,
	`nombres` varchar(130) ,
	
	-- RELAZIONI

	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);





--
-- Struttura della tabella `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
	`creditos` int ,
	`nombre` varchar(130) ,
	
	-- RELAZIONI

	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);





--
-- Struttura della tabella `periodo`
--

CREATE TABLE IF NOT EXISTS `periodo` (
	`estado` bool ,
	`fecha` date ,
	
	-- RELAZIONI

	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);





--
-- Struttura della tabella `pregunta`
--

CREATE TABLE IF NOT EXISTS `pregunta` (
	`valor_pregunta` varchar(130) ,
	
	-- RELAZIONI

	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);





--
-- Struttura della tabella `profesor`
--

CREATE TABLE IF NOT EXISTS `profesor` (
	`apellidos` varchar(130) ,
	`cedula` varchar(130) ,
	`nombres` varchar(130) ,
	
	-- RELAZIONI

	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);





--
-- Struttura della tabella `respuesta`
--

CREATE TABLE IF NOT EXISTS `respuesta` (
	`id_encuesta` int  NOT NULL,
	`id_estudiante` int  NOT NULL,
	`id_materia` int  NOT NULL,
	`id_profesor` int  NOT NULL,
	`valor_respuesta` varchar(130) ,
	
	-- RELAZIONI

	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);





--
-- Struttura della tabella `user`
--

CREATE TABLE IF NOT EXISTS `user` (
	`password` varchar(130)  NOT NULL,
	`role` varchar(130) ,
	`username` varchar(130)  NOT NULL,
	
	-- RELAZIONI

	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);


-- Security

INSERT INTO `docente_db`.`user` (`username`, `password`, `_id`) VALUES ('admin', '62f264d7ad826f02a8af714c0a54b197935b717656b80461686d450f7b3abde4c553541515de2052b9af70f710f0cd8a1a2d3f4d60aa72608d71a63a9a93c0f5', 1);

CREATE TABLE IF NOT EXISTS `roles` (
	`role` varchar(30) ,
	
	-- RELAZIONI

	`_user` int(11)  NOT NULL REFERENCES user(_id),
	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);
INSERT INTO `docente_db`.`roles` (`role`, `_user`, `_id`) VALUES ('ADMIN', '1', 1);






