CREATE TABLE `clinicas` (
  `idClinicas` int(11) NOT NULL,
  `NitClinicas` varchar(15) DEFAULT NULL,
  `NombreClinica` varchar(45) DEFAULT NULL,
  `DireccionClinica` varchar(45) DEFAULT NULL,
  `TelefonoClinica` varchar(45) DEFAULT NULL,
  `Habilitado` tinyint(1) DEFAULT NULL
);

CREATE TABLE `odontologos` (
  `idOdontologos` int(10) UNSIGNED NOT NULL,
  `NombreOdontologo` varchar(45) DEFAULT NULL,
  `TelefonoOdontologo` varchar(45) DEFAULT NULL,
  `EmailOdontologo` varchar(45) DEFAULT NULL,
  `Habilitado` tinyint(1) DEFAULT NULL
);

CREATE TABLE `pedidos` (
  `idpedidos` int(11) NOT NULL,
  `caja` varchar(45) DEFAULT NULL,
  `clinica` varchar(45) DEFAULT NULL,
  `paciente` varchar(45) DEFAULT NULL,
  `orden` varchar(45) DEFAULT NULL,
  `antagonista` varchar(45) DEFAULT NULL,
  `fecha_entrada` date DEFAULT NULL,
  `odontologo` varchar(45) DEFAULT NULL,
  `tipo_trabajo` varchar(45) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `prueba1` varchar(45) DEFAULT NULL,
  `prueba2` varchar(45) DEFAULT NULL,
  `prueba3` varchar(45) DEFAULT NULL,
  `Habilitado` tinyint(1) DEFAULT NULL
);

CREATE TABLE `usuarios` (
  `idUsuarios` int(10) UNSIGNED NOT NULL,
  `NombreUsuario` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Rol` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Habilitado` tinyint(1) DEFAULT NULL
);

INSERT INTO `usuarios` (`idUsuarios`, `NombreUsuario`, `Nombre`, `Rol`, `Password`, `Habilitado`) VALUES
(1, 'juan', 'Juan Ochoa', 'SISTEMAS', '1234', 1),
(2, 'daniel', 'Daniel Lopez', 'SISTEMAS', '1234', 1),
(3, 'secretaria', 'Secretaria General', 'SECRETARIA', '1234', 1);


ALTER TABLE `clinicas`
  ADD PRIMARY KEY (`idClinicas`),
  ADD UNIQUE KEY `idClinicas_UNIQUE` (`idClinicas`);

ALTER TABLE `odontologos`
  ADD PRIMARY KEY (`idOdontologos`),
  ADD UNIQUE KEY `idOdontologos_UNIQUE` (`idOdontologos`);

ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idpedidos`),
  ADD UNIQUE KEY `idpedidos_UNIQUE` (`idpedidos`);

ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`),
  ADD UNIQUE KEY `idUsuarios_UNIQUE` (`idUsuarios`);

ALTER TABLE `clinicas`
  MODIFY `idClinicas` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `odontologos`
  MODIFY `idOdontologos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `pedidos`
  MODIFY `idpedidos` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;