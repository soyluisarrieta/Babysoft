-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2023 a las 09:09:14
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nombre` varchar(191) NOT NULL,
  `Apellido` varchar(191) NOT NULL,
  `Email` varchar(191) NOT NULL,
  `Telefono` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `Nombre`, `Apellido`, `Email`, `Telefono`, `created_at`, `updated_at`) VALUES
(5, 'Brayan', 'Zapata', 'brayan@gmail.com', '3015824752', '2023-06-05 20:14:19', '2023-06-05 20:14:19'),
(6, 'Andrea', 'Garcia', 'andrea@gmail.com', '3146385221', '2023-06-05 20:15:27', '2023-06-05 20:15:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `idCompra` bigint(20) UNSIGNED NOT NULL,
  `idUsuario` varchar(191) NOT NULL,
  `idReferencia` varchar(191) NOT NULL,
  `Cantidad` varchar(191) NOT NULL,
  `Precio` varchar(191) NOT NULL,
  `Fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`idCompra`, `idUsuario`, `idReferencia`, `Cantidad`, `Precio`, `Fecha`, `created_at`, `updated_at`) VALUES
(1, '1', '1010', '20', '150000', '2023-06-05', '2023-06-05 20:13:34', '2023-06-05 20:13:34'),
(2, '1', '1515', '15', '110000', '2023-06-05', '2023-06-05 20:13:52', '2023-06-05 20:13:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_02_021810_clientes', 1),
(7, '2023_05_03_030907_create_permission_tables', 1),
(8, '2023_05_31_023053_proveedores', 1),
(9, '2023_05_31_023710_productos', 1),
(10, '2023_05_31_023723_compras', 1),
(11, '2023_05_31_023743_ventas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'modulo.dashboard', 'web', '2023-06-05 10:43:11', '2023-06-05 10:43:11'),
(2, 'modulo.configuracion', 'web', '2023-06-05 10:43:11', '2023-06-05 10:43:11'),
(3, 'modulo.proveedores', 'web', '2023-06-05 10:43:12', '2023-06-05 10:43:12'),
(4, 'modulo.productos', 'web', '2023-06-05 10:43:12', '2023-06-05 10:43:12'),
(5, 'modulo.compras', 'web', '2023-06-05 10:43:12', '2023-06-05 10:43:12'),
(6, 'modulo.ventas', 'web', '2023-06-05 10:43:12', '2023-06-05 10:43:12'),
(7, 'modulo.clientes', 'web', '2023-06-05 10:43:12', '2023-06-05 10:43:12'),
(8, 'eliminar.clientes', 'web', '2023-06-05 10:43:13', '2023-06-05 10:43:13'),
(9, 'eliminar.ventas', 'web', '2023-06-05 10:43:13', '2023-06-05 10:43:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idReferencia` bigint(20) UNSIGNED NOT NULL,
  `idProveedor` varchar(191) NOT NULL,
  `nombreProducto` varchar(191) NOT NULL,
  `Talla` varchar(191) NOT NULL,
  `Cantidad` varchar(191) NOT NULL,
  `Categoria` varchar(191) NOT NULL,
  `Foto` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idReferencia`, `idProveedor`, `nombreProducto`, `Talla`, `Cantidad`, `Categoria`, `Foto`, `created_at`, `updated_at`) VALUES
(1010, '1', 'Ejemplo1', '3-6 meses', '20', 'Pijamas', 0xffd8ffe000104a46494600010100000100010000ffdb00840009060713131215101310151515161715151615161515151618171718161617171515181d2820181d251d151621322126292b2e2e2e18203338332d38282d2e2b010a0a0a0e0d0e1b10101a2d2520262f2d2d2f2d2d2d2f2d2d2f2d2d2d2d2d2b2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2dffc000110800c600fe03012200021101031101ffc4001c0001000007010000000000000000000000000102040506070803ffc400461000020201020207030806080505000000010200031104211231050607224151611371811423325291a1b1c11542728292d1243362a2b2b3f0f135438393c2256374a3d2ffc4001b01010002030101000000000000000000000003050204060107ffc40035110002010203060405030305000000000000010203110412210531415161b13271c1f0138191a1d12233f11472e12342526292ffda000c03010002110311003f00de311100444401111004444011110044c2bae9da0d1a06f65c06ebb878b81582aaf97b4739e1277d8027037c646756f4b769fd23713c172d2a49c2d48bb0f01c6e0b13ea31ee9bb87d9f5eb2cc959737eeff006239d58c746743192576ab7d1607dc41fc272bf4974d6a6ffebf5375a3eabd8c57e099c7dd2d2cf654dc753b203cf818a6ff00ba44dc7b1e6a3773fa2bfadfec46b109bdc760647291cce4fa3ad3ae4538d7ea40e781a8b7ff00d4da63aa3d25903f4f5b9201e7a8f2ce36b7135eaecff856cf512bf497a2666aadf72ec6dd2651f48f49d3a74f697dd5d49f5ac7541ee058ee6688eb774c749f47dc34dfa55ede2a96ce2c631c4d62f0e5b88e7b99ce7c6605a9d55b7d9ed6fb5ed6fad63339f7658f2f49252d952a894b3ab3e49faa478eb247415bdace805ab5a9b5d0b70b5c1386b5f5ef6188f5031339d36a12c50f5baba9dc3290ca7dc46c6726d3a82b9c63752a76cec79f3e465dfab1d64d5692cce9eef660eecadfd53fed290403ea37f59b35b63c72ff00a52d7af1fc7bd48a388d7f523a862617d42ebdd5af5f66d84d42805abce38878b203be078f96d334949384a9c9c64acd1b49a6ae84444c0f4444401111004444011110044440111100444401111004c23b4ceb78d151ec909f6f72b04239d6391b4f9633b799f71992f4f74aa6974f66a6cfa35a96c67058feaa8f52703e339afacfd3366aef7d4da7bcfc973b2a8fa28be807da727c6596cdc1fc7a99a5e15bfabe5f9e8415eae4565bca2b1f8bbc492db9249c939e6493cce7c64893c69bbbc17cf69ee7633ac56657b562a74fa2b1d2cb16b664ac29b180c840d90a5b1c81c1df96d28dd73336ea2f4a2e8d3536da2c0ac9570a856f9cef1070718c04763b900e47c319e96d5a5b73da94ad2ac722a53955d80c03f7f2037d801b48615272a928e5fd2ad6973d136bcd6beba9eb49453bebc8b3be976d8f3f399baf5fad23bda3a49f346e0f5faa48dc0f1de628046279570d4eaf8d1eaaad151d3fd22fabb45aea178516b0aa4b7754b11b9fda328529f01f64f62254f46370dd530dc8b10819c726079cce34a308da2b718ba8e4ca354c7bc73fcc18d89c4d81da7eb746f6108a1b541c8b2d4e154014052af8d9db2339f0f3f018057cc4f30f51d5a6a6e2e37e0cf669464d5ee5669754d5b87a9ca5887895d4e0ab7a7a636f5137cf67fd724d75215d9575283e72b070580c0f6880fea9c8ce338271e59e74a6eef997beaff4bbe92faf535eec873c39386072194fbc13eee73531f828e269dd7896efc7bdc494aaba72d771d43250472945d0fd229a8a2bd457f46c50c3cc67983ea0e41f512be722d5b42c84444011110044440111100444401111004444011131febb74d8d1e8edbf387c7055eb63ecbb78e376f7299942129c9463bde878da4aecd79daff5996d71a1ace56a6e2b181d8d8015e01fb3c473ebb7819aaef1bca9b6c2c4927249c9277249e64cf0bd769db6130f1c3d254d7f2caa9d47395d94356f68f8fe06579128f469df66f218fb7fd8cadcc9217d7cc54de9742f9575b758a8958bbba8a100e04fa0a000bcb96c37e7eb3cb5fd63d45c8f5bb8e07c6542281b10c00db23047df2d02246b0b453cca0afcecbcf9733175276b5d91888939190976e81e995d397e2d3d7771f08efe0f085273c390704838ccb4cc8fab95d2c856c44e6077d8a86ef0c9e2db929d9723241dcec0c7592c8f32baf7cbf2670bdf43d1fae1e2ba1d32b0c60fb3f01b636209e43c7cfc0e263baed51b6c6b58282e7888518507d073fb493e799b2743d5f5d4d82aa6aaf803bf7c77955011eccf1783919257c36c805b0703eb3aa0d4daa8a55558aefccf0edc4478138ce26b61a5473b508d9db5e8afa5f5defd3c89679edabd0b0bae1cfaeff03fe8ca9acc92efd53ef1f98fce7a89b8958c24ee6caec97ad469b4686c23d95a73593fab69c0e1f456c7f17ed19baa728a1337e766dd66f966982d8e0df5775f3f49976e1b31ebc89f30673bb6307965f1a2b47bfcf9fcfbf99b785ab75919994444a33704444011110044440111100444401111004d2fdb2f4e8b6eaf488d95a72d66397b56d80cf9aae7f8fd26caeb874d8d1e92dbf3de0386b1e26c6d9063dfb9f404ce70bce4e4924939249c924ee492799f5975b1b0d9e6eb3dd1dde76f4f53531552d1cbcc909f39e3734a9233e12975470274c68a5a926946cc7cdbf2ff0079ec278e87e87c4fe33dc4c23b8ca7e2642462466447721048991f56ba0eb75f946a33ecb88a57583c2d632e0b77b9ad6b900b0dc93818dc8cb68d7ba652ae1a6bf04a54563e247798fab12655e2f6b52a13c89666b7eb64be7aebd2c5b60b6357c547e25d463c1bbebe46b006655d57d1d571457bd2a51b3b390bcb7dbf9f9e7ce646f49d4b2d5654b69621417078c71103bb68efaf9f3c7983313ebaf555fa3ef084f156f96aace4481cc37930c8cfbc1f19ee1b68c317fa23784be4fe8fa6fed723c6ecea98292ced493e57fbfbd4db5a9b29d3a20d3eb28a6bf667849756f684e4f16de451403fdbb3c669febceae9b75b75b4638188391c8b60648f8cb3b5cc460b1fb7ce78664b85c0aa12cd9aef76e4baebc5bd38b352a56cead6b10bfe813e441fbff913235f2cc5a99460064e0e07af8487b1b2b6355a8c9621c3230c329f507edf8cdbce94f2f4b985bf4dcf7597eea67583e45ab4bc825374b1473646e781e241e16fdd98f567ce7a64454a71a907096e7a18c5b8bba3a8fa37a46abeb5ba970e8dc987e1e87d2564d3fd8f758f81db42e7bb61e3a89e41f1965f40c0647a83e73704e2f1587742aba6fe5d516d4e6a71b88889ae66222200888802222008888022250f4bea45745d6b1c04addcef8d9549e7f080696ed57acbf2ad47b1ace6aa0b28c727b393b7a818e11ee6f39841064c9c872d878ff3f0fbe447bb84ff00ae5e73b9a1423429aa71e1eee53ce4e6f312aa9979ea87559f5faa4ac022a42af7bf202bcfd107eb3e081f13e12d7452d63254832eecb5a2f9b310147da44e8aea7f575343a65a170cc7bd6d98c71d840c9f41b0007800269ed4c6fc0a7963e296ee8b8bf3e5f5e04f87a79a577b91a67b54a69af5cd5528a8a95d2a55005552176000d8774a4c44097fed02ce3e92d59073f3a47c542a63e0548f84c7ccdac1c72e1e0bfeabb1155779b20b263255934d9444cd81aaa38569ab90aa8a80f2cb20b1dbe2f6399eba020ec71b4f1d2a1d469eab94a801169b19dd1151ea013bcce40194557f5c9f2972e85d4f46e90fb4bf542fb06e129477ac7bdf1c2e7e207a1e73859e1eb4ab4d28b6eeefa753bea78fc351c1d3bc978568b7dedaf96bc5999753fa1384fca1c6e47cd83e00f37f88d87a13e731aed6af4b45d48dda9aa8bbf658ddec8afc52f04feec74c76ad952ba5a0a93b7b4b48c8f515ae41f89f81985eb6e61a4baeb18b59abb16b524f7996b716dae7d38d6a5f7e4784b6c0e02a539aa9515b5565c6f7f449be76396c6633e3c9b7af64b918ac8083189d19568887e1dfcb7f3e5e9e337a7687d445d7a7ca29e15d52ae031d96d5e615fc8f9378723b72d17c19047a19d47d0ba8f69a7a6d231c7556f8e78e240719f8ca3db15274a54aa41d9abfa1b98549a927d0e5cbe97adcd762323a12acac30411cc1121c426daedabab1c4abd235af79315dc078a1d91cfaa93c27d187d59a8944b2c1e29622929adfb9aebef710d5a792562b34b6104306208390412082391046e0face87ea475806b74ab61feb57e6ee1cb0e07d2c7930c30f7e3c0ce6fe3c78ff0029b5bb12e9201eed31c77d56d5f0dd7bae3d76653f0334b6c5053a3f138c7b324c34ad3cbccdbb1113972c044440111100444401111004d6bdb2f4d5b550ba644609767dadb8eef08c62a0de6c4fd831be4e3654f37ac302ac0107982320fbc192d0a8a9d4536af6e06338e64d1caa99f038f480fe537cf4d7669a0d412e11a863e3490abff6d8151eb8033305e95ecab575b9f60d5dd59d81cf058b9facaddd207986dfca751476be1a7e2795f5ddf5ff00057cb0d38eed4be7641d584e0fd216ae5cb32d19e4a8070b381f589e35cf801b733369cb7f41f468d369e9d329c8aab4af3e7c2002c7d49c9f8cafcce63135dd6ab2a8f8fd9704585382845451cbdd6960759aa3e7a9d4ff009d64b59951afb4bd8f61dcbbbb13eacc589fbe5389db524d4229f04bb1532d5b2712300484912b91b2e1d19d246a2ca516cadc01654c480e06e08237475c92ac37193cc120d70d2e99f7af5a2bfec6a2bb030ffa94abab7bf0bee12fdae5ae85353dba73a71a74f99083db1b9f4eacadf43883fb570fed38b0176feccb8aeaf457d95d2056f559769d2aa78d7281aeaf3f36ba656af09c6a7361e2e2e6c70c2b2789bb538c6567c56ee1bd4a36bdb970d3335bb6d52b68daf7f3318aebd1d3deb353f2823fe550b62a93e4d75aabc2bfb2ac7cb12dbd37aab6e2ba8b1386b606ba428e1ad52bc772b1e4bc43de5b277332dd3f48a06536ea34b7d82c069207b34aebe0b43f1b0a87b3078abe1420f0b28381839b375cb514b2d62ab45ac2db8b36dc44357a7c6582a860196c507033c24e066494aa3755269f9bddf25963f56aeedc6d7319c5657dbdb7f231789190c4de20b132ce94ea459c5d1fa439cff47a41f7aa053f78339a94ce85ecb189e8ca33e1ed47c05d66252edc8de9465c9f75fe0dbc2789ae8647d21a34bab7a6c5e24b1591c79ab02a467c36339abaddd00da1d53e9dd81000746fad5b13c248f03b107d419d3f316eb975268e903535aee8d5f100c9c392ad8c83c408e601e5e7e72ab67633fa6a9fabc2f7fa3366b53ceba9cdc5f0324e07de4f901e3364765bd53d63df56b590e9e9adb894be78ecd882ab59030a4120b1f3db3e1b33a0fa8da0d230b2ad32fb45e56b936580e3190cc4f0feee264d36717b5dd48b853564f9ef30a78751d5ef1111298d911110044440111100444401111004444013c752d84623985247c019ed287a65b145c7caab0ff74c5afa0395c9c81ee1f84288c49944fa03de5311123113c3022ec49c9249f33bf2d8482b6371b11b823f29293060f498190690260183db0064711198322226f1ec635a5f44f51ff9569e1fd9701ffc45e68e136f7620fb6a87ad3f018b77fb6566d78a9619be4d3f4f526c37ee1b5222272659088880222200888802222008888022220088880222200968eb65dc1a1d53fd5d3de7ecada5de63bda15bc3d1bab3e7532ff1e13ff299d3579a5d51e49d9339b5a0499c49677a530cc66438a38a787a0893a282a5b20631b13b9cf90f192dda81c03b832b9c91cd893b0e5eef3f84b75ce73deb1813faa9e1ef984a76d12f7f3338c2e56e644994da2b029cb7ce2ef8dca9e5c8e3919ec8769ec25757128d8f6569004cf2067a566657313dab18193367f61b6fceea47835687f8588ffc8cd56cd9da6cbec497fa55873b7c9c823fea558fcfed9a3b4d5f093f97744b43f717be0cdd511138e2cc444401111004444011110044440111100444401111004c3fb58ff85ea3df47f9f54cc260fdb03e3a35c7d6b6807fee2b7e2049f0bfbf0fee5dd1854f0bf2341b349498224009dca2a409385fca04f55d3b30240242e49c0ce06fb9f2f1fb0cf1832aecefa95f2fb0bd848d3d4471e0e1ac720e11587d1c6c49e78231cf2374e97aaba2aebf649a3a02631835ab139d8966604b1f52732d7d9668857d1b4918cd85ed638e6598819f3ee851f09984e3b1f899d6ad257d13b25e5eee59d1a6a304692ebef6569a7adf57a22dc080bdb4392d845dd9aa63b9c0ce54e76ce0f81d6804eb4b6b0ca55864104107c41d889ca9d25a1355d75383f32f621f3c2394c9fb33f7cb6d8f8a95452a7377b6abcbf9ee418985acd146c64f599e4ed0a65d1aa54a0f199ef647d242bd70ab38f6d5b56bb67bebc368cfbd6b71ef22606a479cc83a8cfc3d21a46ffde41fc4787f06335f19152c3cd3e4feda995376a91f33a4e2227125a888880222200888802222008888022220088880222200985f6bc99e8cb4f93e9cff00f720fce66930aed78ffe9968f3b34ffe721fca4f85fdf87f747b9854f03f239f24448912189dc1547a01274b5802031008df7c038f3fb4fdb25f29eda2d3fb474af971b2267cb8885fce78da8abbe1a9e1d2dd57d38af47a6ad4602d350fee0cfdf2ed3ce940aa140c003007a0d84f49c0defab2e6d6139afb4ed0353d25a8079587da8f0c8b0648f5dc1fb274a4d35dbc74681669b5639b06a5bd787be9fe27fba596c9a997129734d7afa10d75781a9b1ca7aae312561265ae7585711065f3aa9695d6699b193f28d30c7a1bab07f1967f67eb2edd535fe99a51ccfca74df75f5991d6d694bc9f667b0f12f33a7448c957949a70a5b088880222200888802222008888022220088880222200981f6cb9fd1a4838c5b4e796fdec63ed20fc267930ded67406de8cb88e75705df043defee9693e15a55e0df35dcc66af1673e309283bc9b079138f889322ff00ac4edca9228b2e3d175066aeb1c42c6b6b5523181c4ca01f7e4fdc252d7f1fbbf9cbb7546af69afd2a2eff003f531e78c23076f0f25330aced4e52e49f6b88ead23a5048c44e10b8135ff6d3a556e8ef6a57269baa71fbc7d9907d087c4d81316ed2ba31f51d1d7d558cb009605c64b7b375b0a8f5214c9f0d251af09376b35dcc66af168e6fbad0cccd80b939c0e43dd26a47899206f10a3f1fbe478bfb3f7e3f29db2562ad9333f94c87a96b8d6e9479ea28ff0031658aa51e47ee3fca65dd9ce8c59afd30c13872e723ea2b3839f0ef2afdd23c44ad466dff00c5f6621ac92ea8e8402462270c5b088880222200888802222008888022220088880222200949d29a317536d0dcacadeb3ee752a7f1957100e52d7d0d558f538c356cc8c396ea4a9fc278a3997fed1d31d27aa18e7603f6a29ccc73880f100f91207e73baa151d4a719bded27f54995328da4d23d0d846f32becbbfe2ba6e4466df81f636e0fbf6987d9727d65fbff94cc3b29a9dfa4b4aca38953db31651b0535d8b963e5c440f79916364bfa79abf07d999528bce9f53a2224048ce28b41257e47dd26880722042103636e59f5c72843320bfa93d23c4e3e4579019b9212373bf0ef83ef1299bab1ad4383a1d567ff8f69ff0a99db471549ffbd7fe97e4ac74e5c9fd0a151e026d5ec4345f39a9b4feaad683cfbc598ff8166b8fd177afd2d35ebead4daa3ed65136b762141f61a8b7070f62056fd560aa7254f8eec7713536a558bc2cb2b4ef65a799961e2fe22ba3674444e50b111110044440111100444401111004444011110044440111100b56a7abfa4b199acd250ecff4d9ea462db637246fb002792f55342318d06946361f3156dfdd888ccf99e248ada7a274ebf434f52fecd683f012a9500d8003ddb44458f49e22200888804311888804640444023111004444011110044440111100ffd9, '2023-06-05 20:10:37', '2023-06-05 20:10:37'),
(1515, '2', 'Ejemplo2', '0-3 meses', '15', 'Pijamas', 0xffd8ffe000104a46494600010100000100010000ffdb0043000b090907090907090909090b0909090909090b090b0b0c0b0b0b0c0d100c110e0d0e0c121912251a1d251d191f1c292916253735361a2a323e2d2930193b2113ffdb0043010708080b090b150b0b152c1d191d2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2cffc000110800c800c803012200021101031101ffc4001b00010003010101010000000000000000000003040502010607ffc4003f100002010302040306030505090100000001020300041112210513314122516114324271819123a1c10652b1d1f0333472a2e124256263738283b2c2f1ffc4001801010101010100000000000000000000000001020304ffc4001c1101010101010101010100000000000000000102113121410332ffda000c03010002110311003f00fd6e94a50294a50294a50294a50294a8a7b9b6b64e64f22c6bdb56724f9281b9fb504b4a8e29a19904913aba138d4a7233e47d6a4a05294a052bc2ca0aa92016ce904ee71d702bda05294a05294a05294a05294a05294a05294a05294a05294a0541737705aa0695b763a51411962760066a1bcbf4b700280ec6458ddb3e088b9d20bfd7031eb5872b3de5cdd5bba5da88d20924b8655586e1660c0c50c809395c61f618cedd735bce7bea7568714bdbb8cbc41618cbcaaa50eb67447640c198637c67a550ba8ddcacae5a461b317666383ea6af1091a2220555501555400a00180001dabd0808f16e0ec7eb5db3ccdf8c5fbf1996b6f791c923dbcac81bded0ce8c1bafbcbb11f4ad159f8fa0c7319c7aac2e7ef806a2fc5b49352e0a9d867a30f23eb49b8949aa210b5ac7a81564bc128d4e4820a3c43b0cedfcab7bbdbde7599160710e323631a93eb01ffe5abc7bce34e3af2c77d11a2fe6e49a821bf9599fda1add069ca2402e19f3a8fbfad71d3c8d7135dc92f823565076c9f7cff840fe35993bf8b6f3f55618eea596796e25769de6c44c246668d13a61fae7a9dab7a2bdb989544b999000350c2cb8f323dd3f9550b58d5012d8d64617c957caac9c63a818a6f97e19f8d6867867198df38f781c865ff129dea5af9fd2ccc1d64746539d51b696f964569dbdde4049880db00fd037cfd6b85cf1d3abb4a52b0a5294a05294a05294a05294a05295e120024ec0024927600507b5917fc400d70a334485466e48c467270caae3a1f538f43535c5c9972919c47dcef97ff4aad9c671d7a6c6ba673fb59b5467686e1a3f66679090b0b346ee6d62804a93bbb63f0cb9d2157a9dfb0ce6c6485623a91f9d76738dc9fbd46deeb7c8e6ba223532b1f1007d6ad01b01e555927b78db448fa4ee0b30fc30e00263d5fbf820e31fcaac24b0c9acc522be82038190ca48c8d4ac030f4da83d60082a4020f63b8acdbbb7814c2fe25292860031c12411b83f3ad266d8fad66f12044706e7c57100ebe6e3fd6b78b7acea4e24b78e3903eacf8481b1201f52055b4b78c03a50e00cb6904ec3b9aad6b11c4877f7879f954971676d78b047731b3ac17115d4404b2c7a668b3a189898138c9d8ede94d5fa4f1d1c2e0e485a9015233d476142aa721bbd5760d16483943f75acfad3be746d23dbab664410bca074559351504f99c13f6f3ab3e7e440ac0e2707ed0182edf80c96915fdd49019a5bbf7a38a185620202559351c756538c9efd2f99afe082c2d1a4825e2b25b2c9712b8cdbc089847b9915426467c2830ba8e7dd0a74ca349afa4b381a668de582368449a7de8d1e458cb293d74e738f2071e47595830c8cf96e08fe35f2c6c7873aafb63b5f3c981ccbe7e706237f0c6310afa05415d856e1521bdb7622d008d2f6dc966558f5639f13312de1ce5c6e08c9182be3c6b0b2be9e950c53a4a31eeb8382a4f7dfa1a9ab9345294a05294a052942400493b0c924e300507848504920019249e800f3acdb8b9698955c88c1e9d357a9fd3fac797173ce62884f2d4fcb59f3f9797f58f9dbd93f6aa2e35c3fd896de7e09709125eac89107b474660ecaf90fe207503e2dc63006f5d339fda96b6c7435e0dc9f4af46ea335e76c0adb28e460abf95431317eff0017f0a4c464027a9a9ade1d033f338f535afc442b02c12c288d2b84b699add6560e237e62ab14380738232724ee7cce7a9de3474cc84ddc42ddc8d2f86827985bf2f5634609c90339cae703a9b52471c81438394712232314746008cab29cf98fae3bd5731a8757792695a3c98c4ac0a46c460b2a200b9c6d9209f5df78a2cb2bdc5d42d6d2470c22068ae59e368ee75ae58228f182a76391e441df686fb0e601d42c8add7b8df35478cf199b859b011f0ae257eb7323acafc3e3321b755c6e502924f7032bd3af95cba554b3e690c1de5b5c6ac0605e441823f235acfa9af16ad8811961b82c77152eb5f5aa56f756915daf0e69717535bbde4519563aa147e5336a03190719ce3a8ebdaf100f5a9af49e382a1b2735c306c11b11eb52aaa9dc1237af5d76c8f954eaa1b747469896531911045f890efab27c8ed8ae22556bde2ee777d7650f9e224b48e445f965dcfd4d76dac0ca8c9e84798aaeeb731dc1bab655959a38a2bbb66608d32464e878ddb6122e48df660704ae90c28b125bc6412802b11b8c781bd196a2b87e5f0fe266e63d31476175ab49d4194c2c9a47c593b01f315c413da42f740c9c55a4b9ba7b9305ddbdf4cf1b385062b70b1b20418c801c8193befb766396fa48649d0c36504893436e591a4b89633a925b93192a154e0a202770189c80ab3b7c467714e13c478a5b7ecda0e213d84d613c571772db49225c78adb932ac2c9e10dd464f99f3c1faa82eba2cb8f20fdbfeeaa58c91e82ba45f1203b82c063d3359b3ab1af9a56158711923b7b779c48f1cabcd67d88432b16d2bbe70bd318ed5b6aeaeaaca415600823704572b9b1aebaa529514acdbbb95918c51b028a70e54e7530f876f2feba568382c8eaada58ab0561d5491807e95f2d34177c3e4f101a4f461bab8ae9fcf33559d5e2fed93e9f6a36ca7a54115c24ca74901bbaf522a527c3b9ebb574a8eb3b75fad72640aac7ae0124819000ebd2a58e079ce14787b93d3ef5a36f6cb0200c55a4df2caa5475f84124fe758ba9178ce1c358e679db0b1a3b08c7566032093dbfafa85695d102de5f5017ee40acddb14cdb4bf105cdcf29d20862e7ddba735610e23448892a25b897074a92085f09270700e9256beae2e301df84ac8c3223582f4aeddb9ad303fe4fa5470dc5b5a2f17bbba6656938d5cdbcac237918b73c5adb2698c16d217978db001cf7ded5ca82118b60ab8df38c06f09deb73eb3507b6ac196e211183486c3c4e65867603222858aab731ba2a95049e9abb417335d98a28ef23b7495e5b0b85480be230eedaa262ec72c857058601cf41dee4cbfeeebd326cc9673cd92c54ac90466657d4bb820a820fa551ba5bfb86e16f325b284c4b2cc8eeaf22b20711980a690436093cc236381e2f0dcffa2f8b02e9a331c1044b3ddcc25916369396a9144bbc9238562013844f0ee4f92122e43289a28655042cb1c7280dd40750d838ef59f13dc437cdc8844a0d9433ccbad51bfb7963431b30c6766d8900f9823c776c43c76f1a491f2d95e6d11eb5731c464631a332f8721700e36f538c96bd278b3d2bdeb5e023cab3b8d712b9e17c3e7bdb6e1f2dfcb1ba28821d79008625d846acf8d80d97be4ec2a2af30c6e3d0d583671dc451cb19d13018d43a123ceb3b87de8e23656f782daead4caa754179198a789d4e965656df639c1c0cf5ef5b160d989d7f75ff0088acead93b1632af619e6b5bab366b880cf118f9d0b323004839528cad83d0e181c13b8ce471c2ec60e19c3f87f0f859de3b38121577c067c64966d3b6e735f44c91b8c3a823d7b7caa94b658cb444f995ceff004a935df4e2b64f6a637cf61eb5e36a43861823cc5725d7e2ad233ee27363244b1725a2bb966610cce62e5bfbeed1b804618907469ce4923033a6c706b9e20f3b2b9571261a648f220800db116adfe79dcfa745ab3bb5d4c90c4a4f882a81f1374afa3b2b48ace158d402e706461f137f21daaef99cfd49db56a94a579dd0a8e68629e368e45d4add73d8f983e7525283e5a7b0b9b4b90b102c1b26260a4ea1e4547e75a76d63732296ba2a84af8793a95b71d74be7047ccfe835a95d2ff4b63333c71146914691a02151428c9249c6d924ee4f99aee94ae6d2ade9c4207ef48a3ec09aa246d56ef89c403cd9cfd801fad536076dfa575c78cd645df10b0e1fc4922f6cb7175c4121d7c39a4097133ed0c735b961a3591852acc35000e469fc499ef2cd83c72477e188c153c3ef9981f431c4c9fe63565acac1ae52f9ad606bd8e33125cb4686658cfc2af8ce2a68c6326b7114c8b8bf221304d070e1a5a7f6a5549ef7490c2211024ac5900beac16c69c0524b4b7876424efac7dcd5a2763552f3711ff8c1ab9f52f8f6ce28979f2e9fc49d939ac492488d742019e806fb7a93d4d59c01d2a1b6feccfccd4c0e69af49e1b9ebd299c7d2bd3d2b89644863691f5100aaaa2005e491ce958d0120649e9b8f3d80c88ae89ab3607c532fa29fd2b392ea178a49a43eccb0c8d0ce2eda28cc52ae0e867d450ec415c31c8208ebb4dc3f8870d92e9228af6d6492457088932176c0d5e15ce4f4ed59d7846dd294ae2db878e39061d41f9f5fa1aa57161a95f92d862360c76fbd6852acb67832f86f0f36eef2cabf89ee20c8381dd863cffaeb5a94a535ababda9270a529514a52940a52940a5294142fcf8e01ff000b9fb9155491e9562fbfb6887fcb3ffb1aacdfc6bae7c66bd27ad1338a608183dff5af57016b48f40c903cc8193eb592f23dcc8646e6f864cc43056054667450a41c33e172e48382c074ad6dbb9c027738ce079d626672b6d2bc535af3efe5cda4c6091974acadad648490037bc464f5ed5bcfda97c5c323c16e841d25e4752fa0cbcb8d239277758c0259b0a428c1c923638c190a3fe0b477376a65504348ece3a0235c326171e60053f2ed1c8d2082d552dae6e1a4bb8d75dbbc0ad69d4fb4b73d80217a1032482763d0cd9bf07ddb42d82bcdccba40f3e41077ff00cbfcaa5f7e93c7897333c891bc057c734323871a79b10cb72d77253a60920efd36cd712adf7b58912d92e115235b4d574b047033295959d4c6ec59bb100edb6dbeb961b68a22d20d464c48d248ee70c58ea795c64264f7381b0c74181224b14a892c12c5246dba4b0c8922363baba12bf9d65542ce18ae0b713b98545c492dc1895df9a96b1a3083f0f234ea210166c027a7418abd6f71aee2db46a60641ef0e8bd350cf6f2aa709e53f10b27407c735e5aa9e92db4efcc207fd3762ade854fc756edb4c4d19232415773dd8d5f9c3f5bb4ae5183aab0ce080466baaf3b65294a05294a05294a05294a05294a05294a0cebdfef09e90afe6cd59ef71891923552227292c929611870012881412c477dc01d3248216f5eff78f94483f326b3939d1c86178c989a5ba90388e694c8b2b99100e503820960c08df0083be076cf8cd716ded114c213a487135c48fcc665943bb60c4ac35065ca86cb63183be722f31c00055589647944a56448a28a48605970247e63ab33b28e83c20283bf52719c0998b9d82e6b48f24621188accba9a2966b68a09e0792cee0add4714b1c9246f242c489154920fbbd6b49b9a00c21ce739c81d3a56341c1386d85edd5edbdb88ae6fc9e69e6c9200abbe940e480327381fc0606b37959d4ec6adbbac706a99e3444c977959234504f767217f3ab78e9ebfc0ef5957dc2ed38a70f96c6e83b4130f172d9a375619c32b0efd7ee46e0d4dc2ed61e19696fc3e27b878adc148daea5334813390bace365e8a31b00054d7dbf16789788595bf13b3b9b0b933082e1424becf2345215c82575aef83d1877071dea1e1bc2ec7845a476364b2881097ccd234923390012cc7d000361d2b40e3a815e641f3a8a82e6d61ba4459398ad1b0921961731cd0498d3ae29177071b1ec46c4107151c70f130f1afb65bc8b950cd359e2565cef930ca899f5e5fd3b55cc8c566f12b5e2d7327077e1bc424b436dc42de5bb8f5622bbb32ebcd8df0a4eac0f0f6ebd33905ebea235d088be4315d5295e768a52940a52940a52940a52940a52940a529419d7a3fda17d6219fa31154ae6da1bbb7b8b59f99c9b84e5ca2296489d9090481244430ce37c1f4ef57afc62580fef23afd883fad56fa575cf8cd361f2f4ae0b63a0c93b0fe66bddbd2bc2c15493df615a4725ca8cee4e7a91903e82ac41686e57549903cfb838ed55e32f21c800203b13dfe55b71a84455f2033f3ef59d5e2c8a12da1823263cb2a8df2b9603cf03ad530438048c7956f6d58f322c524880630fe11e846454ceba58e5771bd763150469309a795a7678a45856380a461616404332ba8d6756c4e49c636eb8a9eb683bc31472cb2b048a28de595d812123452ccc40df6155624b9b992de799e7b68f5c72456713047d2082bed922e58b1ea5410a3a1d58c9eafe2927b0bf8631aa49206d0a3e364225083e78c7d6bdb796e2e2f209a336adc326b682681d4c9ed2f3bc8cc4b67c1a34e9c77ce7341bd4a52b8365294a05294a05294a05294a05294a05294a0a5c417c303feec9a4fc9d4ff2aa477cfdab46f9736b31c6ea15c7a69606b300dceff3fad74c78cd453c9c9407bb32c69a83150cc0e0be804e3ffcef54c493cfe1e7858434ab14a22532ceaac46a31b2841e4069dfaed9c55fd4449b1e83ad5142209a5678e5744791adda388c831231728c13c595dc0db04637cec3a445bb6795ae21b69402534bac918d31c8036375d44861f10c91bec77c2fd0d7ccf0a8a46bc59a57998af3121e7f2f9ba19cca4b88c051d954760a324926be9ab96fd6a15977c089891f12a9fb0c56a566f11f0b42de6b22fd883533e955626ca9cf5077aeea084edf326a6e9d6bb32eb6cf4271d81c67d326b2780c9c5ae6f6e64b9e1cdc32dd6ea5e5c0675996e892e5a71132ea8f3b1d9b0c72703393a992413dbd6bdb362f771a81e15d6c48c8e8a46f8febed52f846cd294ae0d94a52814a52814a52814a52814a52814a528389975433af768e403eaa6b0e124ea27baa9fcb35bf5f3bccd3a9171a8784e3b636ae984af750d4c7e7519655e6bbb2222e0b3c8ca91a64756772147deb89a68eda09ee25d5cb850bb841aa46dc2aa20eecc48551e64543058f3e44b9e231452ce835450be24b7b427e1851bc2587c4e464f6c0f08e8caf70cb8b59a54304f14c39846a85d245c0cef94247e75f4158b6626370102e5518396df01707e99adaae5bf5a8550e27133c0aea093136480093a5b62703e957e959978af9c84f8463cf35331a96ee110cda95408e4dc63a06ee3f5a8c0cd7697acd88dd9880aa37cee6af70e84233b1396d201fa9cd56c11a7a0ce74e48cb63ae907738ef5a1643c0e7cd80fb0a9bbf08b74a52b8b45294a05294a05294a05294a05294a05294a0565712b78915668a31cd7940603a386049247e75ab5478a345159cf732b308ed51e790aa976d0ab96d28bb93e42ae7d19371646eada58048d14874491cd1aab182589d654974c9943a4807076fd3ae131a4b30e65fc97c4db23ea8e3856cc989ca12861db59cf8c6b6e83a74308b66bc449388c6083878ec59b5c16fdc0940f0bc9fbc48201d940032dafc3e1915e6958fe1b8023047881cf8b1e9d315d6df88d0000181b0f215ed295c54a5294147894cb1c2a871f8ada7a648006491eb59b1b962703036d229c7deed6eb842db888f322bf0fed0651082bc92ac446325bc8657233b8c555b15b949aee396e64b858d6d817956352277432481163500260c781be37dcd76c78cd57e2bfb3bc378c5d5adecd71c461bbb3545b792cae9a128464875f09c30c9e98f5cd7d5dac6d1c4030209df0739c630339deb8b4484c6b2681af246a237d8f6ab558d6bbf164294a5614a52940a52940a52940a52940a52940a52940a100820ee0820d29415458c01d9b54854ae911e4681be72303567eb56400a0003006c00ec294a0f694a50294a50472c51ccba645c8c823cc11dc1aab0f0cb385e690731ccb2b4ce246c82ec00ec06db003e54a55ef05e000c01d074c5294a814a52814a52814a52814a5283ffd9, '2023-06-05 20:12:09', '2023-06-05 20:12:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedor` bigint(20) UNSIGNED NOT NULL,
  `Cedula` varchar(191) NOT NULL,
  `NombreProveedor` varchar(191) NOT NULL,
  `Correo` varchar(191) NOT NULL,
  `Telefono` varchar(191) NOT NULL,
  `Fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idProveedor`, `Cedula`, `NombreProveedor`, `Correo`, `Telefono`, `Fecha`, `created_at`, `updated_at`) VALUES
(1, '1014258741', 'Don Pacho', 'pacho@gmail.com', '3207516655', '2023-06-05', '2023-06-05 20:09:21', '2023-06-05 20:09:21'),
(2, '1075247842', 'Sebastian', 'sebas@gmail.com', '3207516655', '2023-06-05', '2023-06-05 20:09:55', '2023-06-05 20:09:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-06-05 10:43:11', '2023-06-05 10:43:11'),
(2, 'Empleado', 'web', '2023-06-05 10:43:11', '2023-06-05 10:43:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$6ydTinjfL6z0RsohfOOMbOzxM8mTLqYJdRZ8tL/Tno9QyC8l/5/8i', NULL, '2023-06-05 10:43:14', '2023-06-05 10:43:14'),
(2, 'Juan Pablo Restrepo', 'juan@gmail.com', NULL, '$2y$10$tbSEF9NkeeGMTHZ5coEEU.su0/8AaCVldwbYMmfHpKpch/7Rgf50m', NULL, '2023-06-05 20:08:22', '2023-06-05 20:08:22'),
(3, 'Alexis Cardona T', 'alexis@gmail.com', NULL, '$2y$10$/4pwaTugoJwaz6cT8LHNE.yi629e1EyekLzUMe574h90cWd5URvtO', NULL, '2023-06-14 11:56:30', '2023-06-14 11:56:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idVenta` bigint(20) UNSIGNED NOT NULL,
  `idUsuario` varchar(191) NOT NULL,
  `idCliente` varchar(191) NOT NULL,
  `idReferencia` varchar(191) NOT NULL,
  `Cantidad` varchar(191) NOT NULL,
  `Precio` varchar(191) NOT NULL,
  `ValorTotal` varchar(191) NOT NULL,
  `Fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idVenta`, `idUsuario`, `idCliente`, `idReferencia`, `Cantidad`, `Precio`, `ValorTotal`, `Fecha`, `created_at`, `updated_at`) VALUES
(1, '1', '6', '1010', '2', '12000', '24000', '2023-06-05', '2023-06-05 20:16:02', '2023-06-05 20:19:36'),
(2, '1', '5', '1515', '2', '10000', '20000', '2023-06-05', '2023-06-05 20:19:02', '2023-06-05 20:19:02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`idCompra`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idReferencia`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `idCompra` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idReferencia` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1516;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idProveedor` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idVenta` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
