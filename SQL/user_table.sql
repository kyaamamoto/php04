-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql635.db.sakura.ne.jp
-- 生成日時: 2024 年 7 月 13 日 02:16
-- サーバのバージョン： 5.7.40-log
-- PHP のバージョン: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `zouuu_zouuu_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `lid` varchar(128) NOT NULL,
  `lpw` varchar(256) NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`, `created_at`, `updated_at`) VALUES
(1, 'テスト', 'test_id', 'test_pw', 0, 0, '2024-07-12 17:15:23', NULL),
(2, 'テスト', 'test_id', 'test_pw', 0, 0, '2024-07-12 17:15:23', NULL),
(3, '大谷翔平', 'ootani', '$2y$10$FlJUJSVnIZnlKmAvUxxW6.qowFpVPTDNIQXOsyW4RgICzWJ35gZWa', 1, 0, '2024-07-12 17:15:23', NULL),
(4, '加藤茶', 'katou', '$2y$10$rMLBy6X4UoQ/7rTjCutYE.FdcsSYmLz7kEN.z8a8zyfChRUzJEGbW', 1, 0, '2024-07-12 17:15:23', NULL),
(5, '志村けん', 'shimura', '$2y$10$AbPVV1ENex2psSs/Xfp6FOLrlB5zORQdigttofwrqS2PTAVuDvTjm', 0, 0, '2024-07-12 17:15:23', NULL),
(6, '志村けん', 'shimura', '$2y$10$O/C5.q.uPByDKduSNOEUsuSQ4OPeFVG1u61zCQLLIiMFwVpLUG7lO', 0, 0, '2024-07-12 17:15:23', NULL),
(7, '志村けん', 'shimura', '$2y$10$9XvPqrXiTmal.wnrd69maOMLHjhUDSUds9ymomg0xUE5UyRMyvH4W', 0, 0, '2024-07-12 17:15:23', NULL),
(8, '仲本工事', 'nakamoto', '$2y$10$ZLqIr/y4GDISkpfISxXiz.rg5QRN6tMxBMJaOikz07Q0TWxbOKFkO', 0, 0, '2024-07-12 17:15:23', NULL),
(9, '高木ブー', 'takagi', '$2y$10$gjX9bp4opgTa32wvGfCT7.JkifyiBXkc1s2PfiXvgKwhzkw7No7oq', 0, 0, '2024-07-12 17:15:23', NULL),
(10, '荒井注', 'arai', '$2y$10$TUepG0cP67pDNUr01M6xJuu2vqFSrDNijUUQ5KpLUSkNSgl.EnvM6', 1, 0, '2024-07-12 17:15:23', NULL);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
