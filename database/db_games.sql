-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2021 a las 03:18:59
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
-- Estructura de tabla para la tabla `commentary`
--

CREATE TABLE `commentary` (
  `id_commentary` int(11) NOT NULL,
  `commentary` varchar(350) NOT NULL,
  `vote` int(1) NOT NULL,
  `id_match` int(11) NOT NULL,
  `name_user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `commentary`
--

INSERT INTO `commentary` (`id_commentary`, `commentary`, `vote`, `id_match`, `name_user`) VALUES
(1, 'Me gusto mucho el juego muy recomendable.', 5, 1, '5'),
(4, 'Muy buen juego', 5, 1, 'admin'),
(7, 'Muy buen juego', 5, 3, 'admin'),
(10, 'Me gusto mucho este juegazo', 5, 3, 'admin'),
(15, 'No me gusta', 1, 1, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `game`
--

CREATE TABLE `game` (
  `id_game` int(11) NOT NULL,
  `title` varchar(260) NOT NULL,
  `year` smallint(5) NOT NULL,
  `synopsis` text NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `game`
--

INSERT INTO `game` (`id_game`, `title`, `year`, `synopsis`, `id_genre`) VALUES
(1, 'The Legend of Zelda: Link\'s Awakening', 2019, 'Como Link, despertaste en una extraña tierra muy lejos de Hyrule, donde los animales hablan y los monstruos merodean por ahí. En esta nueva versión de uno de los juegos más queridos de The Legend of Zelda, que ha sido mejorada con increíbles detalles, deberás explorar la isla Koholint y todas sus mazmorras cargadas de trampas ocultas para descubrir la verdad detrás de tu paradero y despertar al Pez del Viento. Conforme avances, encontrarás una gran variedad de divertidísimos y encantadores personajes de los cuales no querrás despedirte.\r\n', 2),
(2, 'The Last of Us', 2013, '¿Qué pasaría si la naturaleza comenzara a reclamar lo suyo? Esta es la pregunta que da el giro argumental principal de la historia en The Last of Us. Los científicos han descubierto un hongo muy peligroso que hace que a las personas les broten estructuras parecidas a hongos valga la redundancia y que su conducta sea salvaje y peligrosa, el virus ha comenzado a mutar a la humanidad hasta convertirlos en algo parecido a zombis.', 1),
(3, 'The Binding of Isaac', 2011, 'El protagonista y su madre viven felizmente en una pequeña casa en una colina, con Isaac dibujando y jugando con sus juguetes, a la vez que su madre ve transmisiones cristianas en la televisión. La madre de Isaac escucha entonces “una voz superior” que afirma la corrupción de su hijo por el pecado, necesitando una salvación. ', 2),
(5, 'Donkey Kong 2', 1990, 'una erupción volcánica devolvió la anteriormente hundida Crocodile Isle (Isla Cocodrilo) de vuelta a la superficie del océano, así K. Rool termina secuestrando una vez más a Donkey Kong.', 1),
(6, 'Sacred', 2004, 'Ancaria está en una profunda crisis. Los humanos luchan contra las hordas de orcos que proceden del sur, éstos a su paso arrasan ciudades y poblados en los cuales masacran a sus habitantes. Los soldados del rey, al mando del Príncipe Vorian, intentan repeler la invasión orca. Pero estos orcos no están intentando conquistar nuevos territorios, sino que huyen de algo que no había ocurrido nunca en el mundo: los muertos se levantan de sus tumbas con miradas hostiles.', 3),
(7, 'Uncharted: El tesoro de Drake', 2007, 'El juego se abre con Nathan Drake (Nolan North, voz inglesa) quien recupera el ataúd del explorador y ancestro de Nathan (tal como él mismo dice), Sir Francis Drake desde el fondo del océano, utilizando las coordenadas inscritas en un anillo en posesión de Nathan. El esfuerzo se paga a través de la empresa de la periodista Elena Fisher (Emily Rose), que está ahí para registrar los acontecimientos para un posible documental exitoso. El ataúd está vacío, sin cadáver, sólo contiene un diario escrito por Sir Francis Drake, que apunta a la ubicación de El Dorado, la legendaria ciudad de oro donde Sir Francis Drake fue para encontrar el tesoro, demostrando su falsa muerte como Nathan creía. ', 1),
(8, 'The Elder Scrolls V: Skyrim', 2011, 'La agitación se extiende por el Imperio de Tamriel. El soberano de Skyrim ha sido asesinado. A medida que surgen aspirantes al trono, se van formando alianzas. En mitad de este conflicto, resurge un antiguo mal mucho más peligroso: los dragones, olvidados hace tiempo entre oscuros pasajes de los antiguos pergaminos, han regresado a Tamriel. El futuro de Skyrim, incluso el del propio Imperio, pende de un hilo, mientras aguardan la llegada vaticinada del Sangre de dragón, un héroe dotado del poder de La Voz, el único que puede hacer frente a los dragones.', 3),
(14, 'Super Smash Bros: Brawl', 2008, 'Tras elegir entre una gran variedad de personajes, dos a cuatro jugadores lucharán en diferentes y variados escenarios mientras tratan de sacar a sus oponentes fuera del escenario. ... Incluye un modo de un jugador más extenso que sus predecesores, conocido como El emisario subespacial.', 1),
(33, 'Dark Souls', 2011, 'El juego tiene lugar en los últimos días de la Edad del Fuego, la cual comenzó tras la derrota de los Dragones de Piedra que anteriormente reinaban el mundo. Durante esta época el mundo era un lugar oscuro y lúgubre habitado solamente por una raza inmortal de dragones cuya capacidad de prolongar su vida eternamente provenía de sus escamas pétreas. En esta época aparentemente no existía aún ninguna llama, por lo que el mundo era un lugar completamente oscuro, amorfo y casi desierto.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genre` int(11) NOT NULL,
  `name` varchar(260) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genre`, `name`) VALUES
(1, 'Accion'),
(2, 'Aventura'),
(3, 'Rol');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `image`
--

CREATE TABLE `image` (
  `id_image` int(11) NOT NULL,
  `path` varchar(100) NOT NULL,
  `id_game` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `image`
--

INSERT INTO `image` (`id_image`, `path`, `id_game`) VALUES
(13, 'images/60d4957f70d76.jpg', 33),
(14, 'images/60d4957f85d69.jpg', 33),
(15, 'images/60d4957f9a975.jpg', 33),
(19, 'images/60d805b728417.jpg', 3),
(20, 'images/60d805b741a5b.jpg', 3),
(21, 'images/60d805b759930.jpg', 3),
(22, 'images/60d805efed8f9.jpg', 3),
(23, 'images/60d805f0032fb.jpg', 3),
(24, 'images/60d805f00b7cc.jpg', 3),
(25, 'images/60d806fc66e17.jpg', 3),
(26, 'images/60d806fc71610.jpg', 3),
(27, 'images/60d806fc7dd4b.jpg', 3),
(28, 'images/60d8071f16a2a.jpg', 3),
(29, 'images/60d8071f25874.jpg', 3),
(30, 'images/60d8071f2f89e.jpg', 3),
(31, 'images/60d8b0c69a5ce.jpg', 3),
(32, 'images/60d8b0c6b6edb.jpg', 3),
(33, 'images/60d8b0c6c39fe.jpg', 3),
(34, 'images/60da96f9ab214.jpg', 1),
(35, 'images/60da96fa48424.jpg', 1),
(36, 'images/60da96fa639a9.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(150) NOT NULL,
  `password` varchar(240) NOT NULL,
  `admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `user`, `password`, `admin`) VALUES
(5, 'admin', '$2y$10$gihck7uYf/VDJRoW/59vUOcv.EHrZGPp4fdj/xonJoYRRjmkL2VAS', 1),
(6, 'Usuario_1', '$2y$10$7iYTNpYgkIrg8s1IfiEiU.ImDqhWNNkrepiZ3kxYC6OxhWz2a98GG', 0),
(7, 'Usuario_2', '$2y$10$NGiG33eXe8fkV0j/Px0xzeLVCYT.C.GGPXAbKovBlgO8kO/p.vCgy', 0),
(8, 'Usuario_3', '$2y$10$cHZZJ77hH.TEw7Uc14oEz.plOF9TnuSAWIxGbcr8SUis5Z3GKsv3G', 0),
(9, 'Usuario_3', '$2y$10$PoNqXyF8uT2DmcZ2AOPk8.NT5Ey0J7TC6WdH7JVQ/VY.JIqWp3pd.', 0),
(10, 'Usuario4', '$2y$10$plcbS3kwQFw1ZpC9XDos0ulhq2LZaZXgx.6JXZnkUXnBKsbY6n3F6', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `commentary`
--
ALTER TABLE `commentary`
  ADD PRIMARY KEY (`id_commentary`),
  ADD KEY `fk_commentary_game` (`id_match`),
  ADD KEY `fk_commentary_user` (`name_user`);

--
-- Indices de la tabla `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`),
  ADD UNIQUE KEY `id_game` (`id_game`),
  ADD KEY `fk_game_genero` (`id_genre`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indices de la tabla `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `fk_image_game` (`id_game`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `commentary`
--
ALTER TABLE `commentary`
  MODIFY `id_commentary` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `game`
--
ALTER TABLE `game`
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `commentary`
--
ALTER TABLE `commentary`
  ADD CONSTRAINT `fk_commentary_game` FOREIGN KEY (`id_match`) REFERENCES `game` (`id_game`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `fk_game_genero` FOREIGN KEY (`id_genre`) REFERENCES `genero` (`id_genre`) ON DELETE CASCADE;

--
-- Filtros para la tabla `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `fk_image_game` FOREIGN KEY (`id_game`) REFERENCES `game` (`id_game`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
