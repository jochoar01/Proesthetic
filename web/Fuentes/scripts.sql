CREATE TABLE `cajas` (
  `idcajas` int(11) NOT NULL,
  `caja` varchar(12) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cajascol1` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Habilitado` tinyint(1) DEFAULT NULL
);

INSERT INTO `cajas` (`idcajas`, `caja`, `cajascol1`, `Habilitado`) VALUES
(1, 'A1', 'nada', 1);

CREATE TABLE `clinicas` (
  `idClinicas` int(11) NOT NULL,
  `NitClinicas` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NombreClinica` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DireccionClinica` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `TelefonoClinica` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Habilitado` tinyint(1) DEFAULT NULL
);

INSERT INTO `clinicas` (`idClinicas`, `NitClinicas`, `NombreClinica`, `DireccionClinica`, `TelefonoClinica`, `Habilitado`) VALUES
(1, '300987654', 'Clinica 1', 'Direccion Clinica 1', '98765', 1),
(2, '30012345', 'Clinica 2', 'Direccion Clinica 2', '12345', 1);

CREATE TABLE `logs` (
  `idlog` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `rol` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuario` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `accion` text COLLATE utf8_spanish_ci
);

INSERT INTO `logs` (`idlog`, `fecha`, `rol`, `usuario`, `accion`) VALUES
(1, '2017-09-24 19:21:03', '1', 'Daniel Lopez', 'INSERT INTO `cajas`(`caja`,`cajascol1`,`Habilitado`) VALUES(`A1`,`nada`,true);'),
(2, '2017-09-24 19:50:43', '1', 'Daniel Lopez', 'INSERT INTO `procesos`(`trabajo`,`proceso`,`Habilitado`)VALUES(`1`,`A1`,`true`);'),
(3, '2017-09-24 20:11:00', '1', 'Daniel Lopez', 'INSERT INTO `roles`(`rol`,`Habilitado`)VALUES(`ADMINISTRADOR`,true);'),
(4, '2017-09-24 20:55:53', '1', 'Daniel Lopez', 'INSERT INTO usuarios(NombreUsuario,Cedula,Usuario,Password,rol_id,Habilitado)VALUES(`Elvio Lador`,`1026`,`elador`,`123`,`2`,true);'),
(5, '2017-09-24 20:58:00', '1', 'Daniel Lopez', 'INSERT INTO usuarios(NombreUsuario,Cedula,Usuario,Password,rol_id,Habilitado)VALUES(`Elvio Lador`,`1026`,`elador`,`123`,`2`,true);'),
(6, '2017-09-24 20:59:41', '1', 'Daniel Lopez', 'INSERT INTO usuarios(NombreUsuario,Cedula,Usuario,Password,rol_id,Habilitado)VALUES(`Elvio Lador`,`1026`,`elador`,`202cb962ac59075b964b07152d234b70`,`2`,true);'),
(7, '2017-09-24 21:01:20', '1', 'Daniel Lopez', 'INSERT INTO usuarios(NombreUsuario,Cedula,Usuario,Password,rol_id,Habilitado)VALUES(`Elvio Lador`,`1026`,`elador`,`202cb962ac59075b964b07152d234b70`,`1`,true);'),
(8, '2017-09-24 22:25:42', '1', 'Daniel Lopez', 'INSERT INTO `pedidos`(`caja`,`clinica`,`paciente`,`orden`,`antagonista`,`fecha_entrada`,`odontologo`,`tipo_trabajo`,`fecha_entrega`,`prueba1`,`prueba2`,`prueba3`,`Habilitado`) VALUES (`1`,`1`,`Daniel`,`123456`,`Si`,`2017-09-24`,`1`,`Trabajo`,`2017-09-25`,`1`,`1`,`1`,true);'),
(9, '2017-09-24 22:32:16', '1', 'Daniel Lopez', 'UPDATE `pedidos` SET `caja`=`1`, `clinica`=`1`, `paciente`=`Daniel`, `orden`=`123456`, `antagonista`=`Si`, `fecha_entrada`=`2017-09-24`, `odontologo`=`1`, `tipo_trabajo`=`Trabajo`, `fecha_entrega`=`2017-09-25`, `prueba1`=`1`, `prueba2`=`1`, `prueba3`=`1` WHERE `idpedidos`=`1`;');

CREATE TABLE `odontologos` (
  `idOdontologos` int(10) NOT NULL,
  `NombreOdontologo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `TelefonoOdontologo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `EmailOdontologo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Habilitado` tinyint(1) DEFAULT NULL
);

INSERT INTO `odontologos` (`idOdontologos`, `NombreOdontologo`, `TelefonoOdontologo`, `EmailOdontologo`, `Habilitado`) VALUES
(1, 'Juan', '3013013101', 'mail@odontologo.com', 1);

CREATE TABLE `pedidos` (
  `idpedidos` int(11) NOT NULL,
  `caja` int(11) DEFAULT NULL,
  `clinica` int(11) DEFAULT NULL,
  `paciente` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `antagonista` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_entrada` date DEFAULT NULL,
  `odontologo` int(11) DEFAULT NULL,
  `tipo_trabajo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `prueba1` int(11) DEFAULT NULL,
  `prueba2` int(11) DEFAULT NULL,
  `prueba3` int(11) DEFAULT NULL,
  `Habilitado` tinyint(1) DEFAULT NULL
);

INSERT INTO `pedidos` (`idpedidos`, `caja`, `clinica`, `paciente`, `orden`, `antagonista`, `fecha_entrada`, `odontologo`, `tipo_trabajo`, `fecha_entrega`, `prueba1`, `prueba2`, `prueba3`, `Habilitado`) VALUES
(1, 1, 1, 'Daniel', '123456', 'Si', '2017-09-24', 1, 'Trabajo', '2017-09-25', 1, 1, 1, 1);

CREATE TABLE `procesos` (
  `idprocesos` int(11) NOT NULL,
  `trabajo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `proceso` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Habilitado` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
);

INSERT INTO `procesos` (`idprocesos`, `trabajo`, `proceso`, `Habilitado`) VALUES
(1, 'P1', 'T1', 'true');

CREATE TABLE `roles` (
  `idrol` int(11) NOT NULL,
  `rol` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Habilitado` tinyint(1) DEFAULT NULL
);

INSERT INTO `roles` (`idrol`, `rol`, `Habilitado`) VALUES
(1, 'SISTEMAS', 1),
(2, 'ADMINISTRADOR', 0);

CREATE TABLE `sedes` (
  `idsede` int(11) NOT NULL,
  `sede` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clinica` int(11) DEFAULT NULL,
  `Habilitado` tinyint(1) DEFAULT NULL
);

INSERT INTO `sedes` (`idsede`, `sede`, `clinica`, `Habilitado`) VALUES
(1, 'Clinica 1 - Sede Medellin', 1, 1);

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `NombreUsuario` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Cedula` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Usuario` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Password` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `Habilitado` tinyint(1) DEFAULT NULL
);

INSERT INTO `usuarios` (`idUsuarios`, `NombreUsuario`, `Cedula`, `Usuario`, `Password`, `rol_id`, `Habilitado`) VALUES
(1, 'Daniel Lopez', '1025', 'dlopez', '81dc9bdb52d04dc20036dbd8313ed055', 1, 1),
(2, 'Elvio Lador', '1026', 'elador', '202cb962ac59075b964b07152d234b70', 2, 0);


ALTER TABLE `cajas`
  ADD PRIMARY KEY (`idcajas`);

ALTER TABLE `clinicas`
  ADD PRIMARY KEY (`idClinicas`);

ALTER TABLE `logs`
  ADD PRIMARY KEY (`idlog`);

ALTER TABLE `odontologos`
  ADD PRIMARY KEY (`idOdontologos`);

ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idpedidos`),
  ADD KEY `prueba1` (`prueba1`),
  ADD KEY `prueba2` (`prueba2`),
  ADD KEY `prueba3` (`prueba3`),
  ADD KEY `odontologo` (`odontologo`),
  ADD KEY `caja` (`caja`),
  ADD KEY `clinica` (`clinica`);

ALTER TABLE `procesos`
  ADD PRIMARY KEY (`idprocesos`);

ALTER TABLE `roles`
  ADD PRIMARY KEY (`idrol`);

ALTER TABLE `sedes`
  ADD PRIMARY KEY (`idsede`),
  ADD KEY `clinica` (`clinica`);

ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`),
  ADD KEY `rol_id` (`rol_id`);


ALTER TABLE `cajas`
  MODIFY `idcajas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `clinicas`
  MODIFY `idClinicas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `logs`
  MODIFY `idlog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
ALTER TABLE `odontologos`
  MODIFY `idOdontologos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `pedidos`
  MODIFY `idpedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `procesos`
  MODIFY `idprocesos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `roles`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `sedes`
  MODIFY `idsede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`prueba1`) REFERENCES `procesos` (`idprocesos`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`prueba2`) REFERENCES `procesos` (`idprocesos`),
  ADD CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`prueba3`) REFERENCES `procesos` (`idprocesos`),
  ADD CONSTRAINT `pedidos_ibfk_4` FOREIGN KEY (`odontologo`) REFERENCES `odontologos` (`idOdontologos`),
  ADD CONSTRAINT `pedidos_ibfk_5` FOREIGN KEY (`caja`) REFERENCES `cajas` (`idcajas`),
  ADD CONSTRAINT `pedidos_ibfk_6` FOREIGN KEY (`clinica`) REFERENCES `sedes` (`idsede`);

ALTER TABLE `sedes`
  ADD CONSTRAINT `sedes_ibfk_1` FOREIGN KEY (`clinica`) REFERENCES `clinicas` (`idClinicas`);

ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`idrol`);
