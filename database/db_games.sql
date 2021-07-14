-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2021 a las 19:10:16
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
(4, 'Muy buen juego', 5, 1, 'admin'),
(7, 'Muy buen juego', 5, 3, 'admin'),
(10, 'Me gusto mucho este juegazo', 5, 3, 'admin'),
(15, 'No me gusta', 1, 1, 'admin'),
(25, 'Malisimo', 1, 1, 'Generico2'),
(26, 'Falla en su jugabilidad', 3, 1, 'admin'),
(27, 'Me gusto mucho este juego', 5, 34, 'admin');

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
(33, 'Dark Souls', 2011, 'El juego tiene lugar en los últimos días de la Edad del Fuego, la cual comenzó tras la derrota de los Dragones de Piedra que anteriormente reinaban el mundo. Durante esta época el mundo era un lugar oscuro y lúgubre habitado solamente por una raza inmortal de dragones cuya capacidad de prolongar su vida eternamente provenía de sus escamas pétreas. En esta época aparentemente no existía aún ninguna llama, por lo que el mundo era un lugar completamente oscuro, amorfo y casi desierto.', 1),
(34, 'Halo: Combat Evolved', 2001, 'El argumento del juego es relatado en el manual de instrucciones, y en los diálogos y narraciones de los personajes, así como algunas escenas. Halo inicia cuando el Pillar of Autumn sale del hiperespacio y llega a una misteriosa estación espacial en forma de anillo llamada «Halo» por el Covenant? Una flota Covenant ataca de repente la nave, dañándola seriamente. El capitán Jacob Keyes inicia entonces el «Protocolo Cole»,? un procedimiento diseñado para prevenir que el Covenant obtenga información sobre la ubicación de la Tierra. Mientras Keyes maniobra la nave para el aterrizaje en el planeta anillo, el Jefe Maestro y Cortana, junto a un grupo de marinos, huyen a través de una «cápsula de escape», la cual se estrella en la superficie del anillo; Cortana y el Jefe son los únicos que sobreviven al impacto de la cápsula.', 1),
(35, 'Horizon Zero Dawn', 2017, 'La historia comienza con la crianza de Aloy, la protagonista del juego. Al nacer, las Matriarcas de la tribu encargaron su cuidado a manos de un marginado llamado Rost. Como resultado, Aloy también es una marginada, ya que nadie de la tribu puede tener contacto con ella o con Rost. En su niñez, Aloy exploraba las \"ruinas metálicas\"  y encontró un dispositivo electrónico llamado \"Foco\". Este objeto le permitió conocer detalles del mundo antiguo mientras exploraba las ruinas. Pero desde su infancia, Aloy ha sido despreciada y excluida por los demás por no tener una madre y quiere saber por qué. Rost le explica que la única manera en la que puede obtener respuestas, y ser aceptada por la tribu, es participar en el rito de los Nora llamado \"La Prueba\". Si gana, se convertirá en \"Valiente Nora\"? y las Matriarcas responderán a todas sus preguntas.', 1);

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
  `id_match` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `image`
--

INSERT INTO `image` (`id_image`, `path`, `id_match`) VALUES
(13, 'images/60d4957f70d76.jpg', 33),
(14, 'images/60d4957f85d69.jpg', 33),
(15, 'images/60d4957f9a975.jpg', 33),
(19, 'images/60d805b728417.jpg', 3),
(20, 'images/60d805b741a5b.jpg', 3),
(21, 'images/60d805b759930.jpg', 3),
(35, 'images/60da96fa48424.jpg', 1),
(36, 'images/60da96fa639a9.jpg', 1),
(37, 'images/60ddddeadf858.jpg', 6),
(38, 'images/60ddddeaf38ac.jpg', 6),
(39, 'images/60ddffcabde77.jpg', 34),
(40, 'images/60ddffcaeebbf.jpg', 34);

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
(14, 'Generico1', '$2y$10$aiN0nP6AYe2slu9n4I/bSek7JEnGm63GQGCD8vDQOENtDFJhced0e', 0),
(15, 'Generico2', '$2y$10$MujleZynlYdQf3QlhDN4UupnrMj9t1Xh9SHzLd.GmNpmKShAcqlIa', 0),
(16, 'josefa2', '$2y$10$32akuwQprA2/G.fh51C0D.evHHXCq8zh8cVG4jv942KN8MGMlA3yC', 0);

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
  ADD KEY `fk_image_game` (`id_match`);

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
  MODIFY `id_commentary` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `game`
--
ALTER TABLE `game`
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  ADD CONSTRAINT `fk_image_game` FOREIGN KEY (`id_match`) REFERENCES `game` (`id_game`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
