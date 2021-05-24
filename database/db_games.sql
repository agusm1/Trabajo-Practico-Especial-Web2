-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2021 a las 06:24:11
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_games`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `game`
--

CREATE TABLE `game` (
  `id_game` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(260) NOT NULL,
  `anio` smallint(5) NOT NULL,
  `sinopsis` text NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `game`
--

INSERT INTO `game` (`id_game`, `titulo`, `anio`, `sinopsis`, `id_genero`) VALUES
(1, 'The Legend of Zelda: Link\'s Awakening', 2019, 'Como Link, despertaste en una extraña tierra muy lejos de Hyrule, donde los animales hablan y los monstruos merodean por ahí. En esta nueva versión de uno de los juegos más queridos de The Legend of Zelda, que ha sido mejorada con increíbles detalles, deberás explorar la isla Koholint y todas sus mazmorras cargadas de trampas ocultas para descubrir la verdad detrás de tu paradero y despertar al Pez del Viento. Conforme avances, encontrarás una gran variedad de divertidísimos y encantadores personajes de los cuales no querrás despedirte.\r\n', 2),
(2, 'The Last of Us', 2013, '¿Qué pasaría si la naturaleza comenzara a reclamar lo suyo? Esta es la pregunta que da el giro argumental principal de la historia en The Last of Us. Los científicos han descubierto un hongo muy peligroso que hace que a las personas les broten estructuras parecidas a hongos valga la redundancia y que su conducta sea salvaje y peligrosa, el virus ha comenzado a mutar a la humanidad hasta convertirlos en algo parecido a zombis.', 1),
(3, 'The Binding of Isaac', 2011, 'El protagonista y su madre viven felizmente en una pequeña casa en una colina, con Isaac dibujando y jugando con sus juguetes, a la vez que su madre ve transmisiones cristianas en la televisión. La madre de Isaac escucha entonces “una voz superior” que afirma la corrupción de su hijo por el pecado, necesitando una salvación. ', 2),
(5, 'Donkey Kong', 1981, 'El juego consiste en que Mario (llamado \"Jumpman\" entonces en este videojuego,) debe rescatar a una dama (Pauline) que había sido capturada por un enorme gorila llamado Donkey Kong.', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(260) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre`) VALUES
(1, 'Accion'),
(2, 'Aventura'),
(3, 'Rol'),
(7, 'Aventura grafica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `contraseña` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `usuario`, `contraseña`) VALUES
(5, 'admin', '$2y$10$gihck7uYf/VDJRoW/59vUOcv.EHrZGPp4fdj/xonJoYRRjmkL2VAS');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`),
  ADD UNIQUE KEY `id_game` (`id_game`),
  ADD KEY `fk_game_genero` (`id_genero`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `game`
--
ALTER TABLE `game`
  MODIFY `id_game` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `fk_game_genero` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
