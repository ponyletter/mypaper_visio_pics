-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 81.69.190.161:3306
-- 生成日期： 2026-03-19 15:27:27
-- 服务器版本： 8.0.44
-- PHP 版本： 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `agri_trace`
--

-- --------------------------------------------------------

--
-- 表的结构 `agri_batches`
--

CREATE TABLE `agri_batches` (
  `id` bigint NOT NULL,
  `batch_no` varchar(64) NOT NULL,
  `trace_code` varchar(32) NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `product_type` varchar(64) NOT NULL,
  `variety` varchar(64) DEFAULT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit` varchar(16) NOT NULL,
  `origin_info` varchar(255) NOT NULL,
  `origin_lat` decimal(10,7) DEFAULT NULL,
  `origin_lng` decimal(10,7) DEFAULT NULL,
  `farmer_id` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `cert_no` varchar(64) DEFAULT NULL,
  `cover_image` varchar(512) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='农产品批次表';

--
-- 转存表中的数据 `agri_batches`
--

INSERT INTO `agri_batches` (`id`, `batch_no`, `trace_code`, `product_name`, `product_type`, `variety`, `quantity`, `unit`, `origin_info`, `origin_lat`, `origin_lng`, `farmer_id`, `status`, `cert_no`, `cover_image`, `remark`, `created_at`, `updated_at`) VALUES
(1, 'BATCH-APPLE-20251025-001', 'AKS2025100001', '阿克苏冰糖心苹果', '果蔬类', '冰糖心红富士', 5000.00, 'kg', '新疆阿克苏地区温宿县红旗坡农场A区', 41.2756830, 80.2437560, 2, 4, 'CERT-2025-AKS-001', 'https://images.unsplash.com/photo-1568702846914-96b305d2aaeb?w=400', NULL, '2026-03-12 14:40:37.000', '2026-03-12 14:40:37.000'),
(2, 'BATCH-APPLE-20251101-002', 'AKS2025100002', '阿克苏红富士苹果', '果蔬类', '红富士', 3000.00, 'kg', '新疆阿克苏地区温宿县苹果示范基地B区', 41.2812340, 80.2501230, 3, 4, 'CERT-2025-AKS-002', 'https://images.unsplash.com/photo-1570913149827-d2ac84ab3f9a?w=400', NULL, '2026-03-12 14:40:37.000', '2026-03-12 14:40:37.000'),
(3, 'BATCH-APPLE-20251110-003', 'AKS2025100003', '阿克苏糖心苹果礼盒', '果蔬类', '糖心苹果', 1200.00, '箱', '新疆阿克苏地区阿克苏市红旗坡镇C区果园', 41.2689120, 80.2378900, 2, 3, 'CERT-2025-AKS-003', 'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?w=400', NULL, '2026-03-12 14:40:37.000', '2026-03-12 14:40:37.000'),
(4, 'BATCH-APPLE-20251115-004', 'AKS2025100004', '有机认证富士苹果', '果蔬类', '有机富士', 800.00, 'kg', '新疆阿克苏地区乌什县有机苹果基地', 41.2134560, 79.2345670, 3, 2, 'CERT-2025-AKS-004', 'https://images.unsplash.com/photo-1567306226416-28f0efdc88ce?w=400', NULL, '2026-03-12 14:40:37.000', '2026-03-12 14:40:37.000'),
(5, 'BATCH-APPLE-20251120-005', 'AKS2025100005', '阿克苏苹果脆片', '加工类', '苹果脆片', 500.00, '袋', '新疆阿克苏地区农产品加工园区', 41.1987650, 80.2654320, 2, 1, NULL, 'https://images.unsplash.com/photo-1619546813926-a78fa6372cd2?w=400', NULL, '2026-03-12 14:40:37.000', '2026-03-12 14:40:37.000'),
(6, 'BATCH-20260312-9dc8a1d6', 'AKS2026038e34', '阿克苏冰糖心苹果', '果蔬类', '', 5.00, 'kg', '新疆阿克苏地区温宿县红旗坡农场A区', 0.0000000, 0.0000000, 2, 0, '', '', '', '2026-03-12 15:01:30.945', '2026-03-12 15:01:30.945');

-- --------------------------------------------------------

--
-- 表的结构 `captchas`
--

CREATE TABLE `captchas` (
  `id` bigint NOT NULL,
  `key` varchar(64) NOT NULL,
  `code` varchar(8) NOT NULL,
  `expired_at` datetime(3) NOT NULL,
  `used` tinyint NOT NULL DEFAULT '0',
  `created_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='图形验证码表';

--
-- 转存表中的数据 `captchas`
--

INSERT INTO `captchas` (`id`, `key`, `code`, `expired_at`, `used`, `created_at`) VALUES
(1, 'f26ab281-18e2-4554-9c2f-abe9f296bbe8', '0814', '2026-03-12 14:48:02.046', 0, '2026-03-12 14:43:02.091'),
(2, '48eeaff7-0021-4ab6-bda2-2ae21caafa76', '4803', '2026-03-12 14:48:05.580', 1, '2026-03-12 14:43:05.618'),
(3, '023f1f1e-234e-4ffd-a327-ce17e677ff1f', '3499', '2026-03-12 14:49:46.830', 0, '2026-03-12 14:44:46.890'),
(4, 'c958b457-b6d5-4f8b-8bef-225834454c5b', '2875', '2026-03-12 15:00:41.372', 0, '2026-03-12 14:55:41.409'),
(5, 'fdaad5e6-ec13-40fe-a7a3-f44544b7fc07', '7133', '2026-03-12 15:02:05.277', 0, '2026-03-12 14:57:05.319'),
(6, '730f8584-d223-4cc7-bdda-a2e461fcbb1d', '0424', '2026-03-12 15:02:18.016', 1, '2026-03-12 14:57:18.092'),
(7, 'a91a8a00-78ce-40cf-b32b-b9be1d4c267b', '8090', '2026-03-12 15:02:47.013', 0, '2026-03-12 14:57:47.049'),
(8, '7d1ea858-6c0a-4efc-8f2b-c20b130522b7', '7705', '2026-03-12 15:03:17.410', 1, '2026-03-12 14:58:17.448'),
(9, 'fe1a9eaa-11f0-4d5d-b9e8-f7e9b4c306bb', '2148', '2026-03-12 15:03:34.403', 1, '2026-03-12 14:58:34.453'),
(10, '9abf1847-6804-45cc-b61f-1425f24db504', '8526', '2026-03-12 15:07:13.604', 0, '2026-03-12 15:02:13.653'),
(11, 'd0c8606c-660a-4508-ab59-88a85c4e74ac', '2467', '2026-03-12 15:09:08.747', 0, '2026-03-12 15:04:08.792'),
(12, '2a93c700-8656-46f3-b891-1309b901147c', '0610', '2026-03-12 15:09:15.711', 0, '2026-03-12 15:04:15.757'),
(13, 'a2c9ab4c-f166-4cca-8912-d22b28846f66', '7993', '2026-03-12 15:09:37.906', 0, '2026-03-12 15:04:37.955'),
(14, '269ccfed-0002-4630-8950-53d17390c847', '1266', '2026-03-12 15:10:50.119', 1, '2026-03-12 15:05:50.171'),
(15, 'f14f3d23-80dd-409b-bf2f-42cc13989828', '2113', '2026-03-12 15:20:03.252', 0, '2026-03-12 15:15:03.287'),
(16, 'd95231c3-1844-4ea1-b918-6a48a1f94920', '1596', '2026-03-13 10:07:45.409', 0, '2026-03-13 10:02:45.668'),
(17, '4a04c3c6-19fe-4ad8-9feb-70f141aa251e', '8406', '2026-03-19 15:50:16.020', 1, '2026-03-19 15:45:16.065'),
(18, '98d85503-1773-41f2-bbdc-66bf16cdb297', '5559', '2026-03-19 15:50:43.268', 0, '2026-03-19 15:45:43.310'),
(19, '03458874-8078-4f5d-9654-6a82d26c3236', '4054', '2026-03-19 15:52:12.739', 1, '2026-03-19 15:47:12.780'),
(20, '016a7427-b269-45c6-b683-4cfd79bc4555', '0779', '2026-03-19 15:52:52.802', 0, '2026-03-19 15:47:52.849'),
(21, '1fb99e0d-ba0d-400c-a6e7-e1d783b61a8f', '1342', '2026-03-19 15:54:18.719', 0, '2026-03-19 15:49:18.768'),
(22, 'fd957288-0517-411e-bec1-375088f40712', '4189', '2026-03-19 15:54:35.425', 0, '2026-03-19 15:49:35.465'),
(23, '2890c769-56ef-4d4d-bd8a-2327d1a8d9ad', '4476', '2026-03-19 15:54:35.784', 1, '2026-03-19 15:49:35.859'),
(24, 'ca60c53c-af4f-400b-8455-87b09c142f94', '8033', '2026-03-19 15:54:55.483', 0, '2026-03-19 15:49:55.529'),
(25, '224b450f-8a73-4a65-b9cc-e7e2c9ec6e8d', '9488', '2026-03-19 15:55:49.088', 0, '2026-03-19 15:50:49.139'),
(26, 'bb9825f5-cdaf-4f3a-99de-8f42c965fc0e', '1962', '2026-03-19 15:55:50.436', 0, '2026-03-19 15:50:50.499'),
(27, '6dba0de5-5314-4845-a741-34f1fd887bc8', '2291', '2026-03-19 15:56:07.931', 0, '2026-03-19 15:51:07.980'),
(28, '281b8a86-e9d5-49eb-b239-b0f2eff2c1dd', '4026', '2026-03-19 15:56:20.385', 0, '2026-03-19 15:51:20.425'),
(29, '70658ff2-60fa-44b8-a74e-8eb4fd718cd0', '7031', '2026-03-19 15:56:20.753', 1, '2026-03-19 15:51:20.793'),
(30, 'b6061f21-9a15-482f-b67f-4126ec507977', '1415', '2026-03-19 15:56:42.737', 0, '2026-03-19 15:51:42.806'),
(31, '7b1699ec-2e54-43a1-be68-d8a860f7bcef', '2772', '2026-03-19 15:56:55.537', 0, '2026-03-19 15:51:55.605'),
(32, '10f11bdb-4f2f-4cba-8afb-5cb5b1dbe5ae', '2569', '2026-03-19 15:56:55.745', 1, '2026-03-19 15:51:55.785'),
(33, '7174d8e9-b659-4dad-8086-341f137b37d0', '7421', '2026-03-19 17:20:41.948', 1, '2026-03-19 17:15:41.992'),
(34, 'e11ca520-d885-4150-873c-4158f234310d', '2085', '2026-03-19 17:21:02.979', 0, '2026-03-19 17:16:03.017'),
(35, 'b8e95b59-c7cc-432f-8a5f-c4dee86476a6', '2049', '2026-03-19 17:21:03.104', 1, '2026-03-19 17:16:03.323'),
(36, '473a4227-141d-4c19-a9a8-3d200ce4407b', '6039', '2026-03-19 17:21:47.988', 1, '2026-03-19 17:16:48.033'),
(37, '7e39cab4-b217-4359-8290-5ee65d86e43e', '1171', '2026-03-19 17:22:10.505', 1, '2026-03-19 17:17:10.550'),
(38, '7527cf29-bf08-4a46-8fcc-dd620628de1a', '5415', '2026-03-19 17:22:32.057', 0, '2026-03-19 17:17:32.111'),
(39, '26e7afb1-b90f-40a6-ade6-d3774b46b445', '7781', '2026-03-19 17:24:54.218', 1, '2026-03-19 17:19:54.269'),
(40, '23be2540-e8b5-40ca-bebf-a14afc27a1e2', '3531', '2026-03-19 17:25:45.560', 1, '2026-03-19 17:20:45.600'),
(41, '453490e4-75fc-456b-8b09-80681da13aa6', '3638', '2026-03-19 17:26:10.213', 0, '2026-03-19 17:21:10.255'),
(42, '064fbd9f-b74a-4732-9351-0f8f3cbb82a1', '6981', '2026-03-19 18:06:52.091', 0, '2026-03-19 18:01:52.142'),
(43, '60b922e1-af43-453b-8802-994648622df7', '4103', '2026-03-19 18:07:52.343', 1, '2026-03-19 18:02:52.404'),
(44, 'deb50ba1-ed49-4f72-babf-2883e621aba1', '4300', '2026-03-19 18:08:55.115', 1, '2026-03-19 18:03:55.162'),
(45, 'd33e473f-2620-4dd2-9592-9611b2e3064e', '2824', '2026-03-19 18:09:25.149', 0, '2026-03-19 18:04:25.195'),
(46, 'ceed955d-f1ea-4406-a95f-fd697328da29', '9459', '2026-03-19 18:45:57.670', 0, '2026-03-19 18:40:57.716'),
(47, '51c0639c-8d46-4eee-b7b4-06509e3fc919', '3089', '2026-03-19 18:48:59.275', 1, '2026-03-19 18:43:59.345'),
(48, 'ce8ef7f4-98d9-410f-b5be-3625a62813b1', '7565', '2026-03-19 18:49:26.105', 1, '2026-03-19 18:44:26.171'),
(49, '70200090-5e8e-426b-bc1a-cf37eb4efad4', '8606', '2026-03-19 18:50:36.069', 1, '2026-03-19 18:45:36.143'),
(50, 'e5ea4bc8-6148-428c-858f-c6abc2134d29', '6000', '2026-03-19 18:51:14.327', 1, '2026-03-19 18:46:14.366'),
(51, '7e5fd815-1e7e-4af1-ace2-1781854cfde0', '3397', '2026-03-19 18:52:32.765', 0, '2026-03-19 18:47:32.821');

-- --------------------------------------------------------

--
-- 表的结构 `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint NOT NULL,
  `batch_id` bigint UNSIGNED NOT NULL,
  `cert_no` varchar(64) NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `producer_name` varchar(128) NOT NULL,
  `producer_addr` varchar(255) DEFAULT NULL,
  `producer_phone` varchar(20) DEFAULT NULL,
  `quantity` varchar(64) DEFAULT NULL,
  `issue_date` date NOT NULL,
  `valid_until` date DEFAULT NULL,
  `issue_org` varchar(128) NOT NULL,
  `issue_org_seal` varchar(512) DEFAULT NULL,
  `pesticide_ok` tinyint(1) NOT NULL DEFAULT '1',
  `heavy_metal_ok` tinyint(1) NOT NULL DEFAULT '1',
  `microbe_ok` tinyint(1) NOT NULL DEFAULT '1',
  `qr_code_url` varchar(512) DEFAULT NULL,
  `pdf_url` varchar(512) DEFAULT NULL,
  `tx_hash` varchar(128) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `inspect_org` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电子合格证表';

--
-- 转存表中的数据 `certificates`
--

INSERT INTO `certificates` (`id`, `batch_id`, `cert_no`, `product_name`, `producer_name`, `producer_addr`, `producer_phone`, `quantity`, `issue_date`, `valid_until`, `issue_org`, `issue_org_seal`, `pesticide_ok`, `heavy_metal_ok`, `microbe_ok`, `qr_code_url`, `pdf_url`, `tx_hash`, `created_at`, `inspect_org`) VALUES
(1, 1, 'CERT-2025-AKS-001', '阿克苏冰糖心苹果', '红旗坡农场专业合作社(王建国)', '新疆阿克苏地区温宿县红旗坡镇农场A区', '13901234567', '5000kg / 950箱', '2025-10-28', '2025-12-28', '阿克苏地区农业农村局', NULL, 1, 1, 1, NULL, NULL, '0x2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c', '2026-03-12 14:40:37.000', NULL),
(2, 2, 'CERT-2025-AKS-002', '阿克苏红富士苹果', '温宿县苹果种植基地(李秀英)', '新疆阿克苏地区温宿县苹果示范基地B区', '13812345678', '3000kg / 590箱', '2025-11-02', '2026-01-02', '新疆农产品质量检测中心', NULL, 1, 1, 1, NULL, NULL, '0x3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d', '2026-03-12 14:40:37.000', NULL),
(3, 3, 'CERT-2025-AKS-003', '阿克苏糖心苹果礼盒', '红旗坡农场专业合作社(王建国)', '新疆阿克苏地区温宿县红旗坡镇C区果园', '13901234567', '1200箱', '2025-10-22', '2025-12-22', '阿克苏地区农业农村局', NULL, 1, 1, 1, NULL, NULL, '0x4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e', '2026-03-12 14:40:37.000', NULL),
(4, 4, 'CERT-2025-AKS-004', '有机认证富士苹果', '温宿县苹果种植基地(李秀英)', '新疆阿克苏地区乌什县有机苹果基地', '13812345678', '800kg', '2025-11-16', '2026-01-16', '新疆农产品质量检测中心', NULL, 1, 1, 1, NULL, NULL, '0x5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f', '2026-03-12 14:40:37.000', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `dashboard_stats`
--

CREATE TABLE `dashboard_stats` (
  `id` bigint NOT NULL,
  `stat_date` date NOT NULL,
  `total_batches` bigint NOT NULL DEFAULT '0',
  `total_users` bigint NOT NULL DEFAULT '0',
  `total_visitors` bigint NOT NULL DEFAULT '0',
  `total_queries` bigint NOT NULL DEFAULT '0',
  `total_tx` bigint NOT NULL DEFAULT '0',
  `total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `created_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='仪表盘统计快照表';

--
-- 转存表中的数据 `dashboard_stats`
--

INSERT INTO `dashboard_stats` (`id`, `stat_date`, `total_batches`, `total_users`, `total_visitors`, `total_queries`, `total_tx`, `total_amount`, `created_at`) VALUES
(1, '2025-11-01', 3, 8, 156, 89, 45, 12.50, '2026-03-12 14:40:38.000'),
(2, '2025-11-02', 3, 8, 203, 112, 67, 18.30, '2026-03-12 14:40:38.000'),
(3, '2025-11-03', 4, 9, 178, 98, 52, 15.60, '2026-03-12 14:40:38.000'),
(4, '2025-11-04', 4, 9, 234, 145, 78, 22.10, '2026-03-12 14:40:38.000'),
(5, '2025-11-05', 4, 9, 312, 189, 103, 31.20, '2026-03-12 14:40:38.000'),
(6, '2025-11-06', 4, 9, 289, 167, 91, 27.80, '2026-03-12 14:40:38.000'),
(7, '2025-11-07', 4, 9, 198, 123, 68, 19.40, '2026-03-12 14:40:38.000'),
(8, '2025-11-08', 5, 10, 356, 234, 128, 38.90, '2026-03-12 14:40:38.000'),
(9, '2025-11-09', 5, 10, 423, 289, 156, 47.60, '2026-03-12 14:40:38.000'),
(10, '2025-11-10', 5, 10, 389, 256, 139, 42.30, '2026-03-12 14:40:38.000'),
(11, '2025-11-11', 5, 10, 445, 312, 172, 52.80, '2026-03-12 14:40:38.000'),
(12, '2025-11-12', 5, 10, 512, 378, 198, 61.20, '2026-03-12 14:40:38.000'),
(13, '2025-11-13', 5, 10, 478, 345, 183, 56.70, '2026-03-12 14:40:38.000'),
(14, '2025-11-14', 5, 10, 356, 234, 128, 39.50, '2026-03-12 14:40:38.000'),
(15, '2025-11-15', 5, 10, 534, 412, 218, 67.40, '2026-03-12 14:40:38.000');

-- --------------------------------------------------------

--
-- 表的结构 `harvest_records`
--

CREATE TABLE `harvest_records` (
  `id` bigint NOT NULL,
  `batch_id` bigint NOT NULL,
  `operator_id` bigint NOT NULL COMMENT '操作人ID',
  `harvest_date` datetime NOT NULL COMMENT '采收时间',
  `harvest_method` varchar(64) DEFAULT NULL COMMENT '采收方式(人工/机械)',
  `actual_quantity` decimal(10,2) NOT NULL COMMENT '实际采收量(kg)',
  `weather` varchar(32) DEFAULT NULL COMMENT '天气情况',
  `sugar_content` varchar(16) DEFAULT NULL COMMENT '糖度(%)',
  `hardness` varchar(16) DEFAULT NULL COMMENT '硬度',
  `location` varchar(255) NOT NULL COMMENT '采收地点',
  `lat` decimal(10,7) DEFAULT NULL,
  `lng` decimal(10,7) DEFAULT NULL,
  `images` json DEFAULT NULL COMMENT '现场图片URL列表',
  `tx_hash` varchar(128) DEFAULT NULL,
  `block_height` bigint DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='采收记录表';

--
-- 转存表中的数据 `harvest_records`
--

INSERT INTO `harvest_records` (`id`, `batch_id`, `operator_id`, `harvest_date`, `harvest_method`, `actual_quantity`, `weather`, `sugar_content`, `hardness`, `location`, `lat`, `lng`, `images`, `tx_hash`, `block_height`, `created_at`) VALUES
(1, 1, 2, '2025-10-25 09:00:00', '人工采摘', 5120.00, '晴，微风', '18.5%', '8.2kg/cm²', '新疆阿克苏温宿县红旗坡A区果园', 41.2756830, 80.2437560, '[\"https://images.unsplash.com/photo-1506484381205-f7945653044d?w=400\", \"https://images.unsplash.com/photo-1592924357228-91a4daadcfea?w=400\"]', '0x1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b', 1502, '2026-03-12 06:40:37'),
(2, 2, 3, '2025-10-30 08:30:00', '人工+机械辅助', 3050.00, '多云', '17.8%', '7.9kg/cm²', '新疆阿克苏温宿县示范基地B区', 41.2812340, 80.2501230, '[\"https://images.unsplash.com/photo-1570913149827-d2ac84ab3f9a?w=400\"]', '0x2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c', 1503, '2026-03-12 06:40:37'),
(3, 3, 2, '2025-10-20 10:00:00', '全人工精品采摘', 1250.00, '晴', '19.2%', '8.5kg/cm²', '新疆阿克苏红旗坡C区精品果园', 41.2689120, 80.2378900, '[\"https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?w=400\"]', '0x3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d', 1504, '2026-03-12 06:40:37');

-- --------------------------------------------------------

--
-- 表的结构 `inspection_records`
--

CREATE TABLE `inspection_records` (
  `id` bigint NOT NULL,
  `batch_id` bigint NOT NULL,
  `inspector_id` bigint NOT NULL COMMENT '质检员ID',
  `inspect_time` datetime NOT NULL COMMENT '质检时间',
  `inspect_org` varchar(128) NOT NULL COMMENT '质检机构',
  `inspect_addr` varchar(255) DEFAULT NULL COMMENT '质检地址',
  `cert_no` varchar(64) DEFAULT NULL COMMENT '检验报告编号',
  `pesticide_result` varchar(16) NOT NULL DEFAULT '合格' COMMENT '农药残留检测',
  `heavy_metal_result` varchar(16) NOT NULL DEFAULT '合格' COMMENT '重金属检测',
  `microbe_result` varchar(16) NOT NULL DEFAULT '合格' COMMENT '微生物检测',
  `appearance_grade` varchar(16) DEFAULT NULL COMMENT '外观等级(优/良/合格)',
  `overall_result` varchar(16) NOT NULL DEFAULT '合格' COMMENT '综合结论',
  `report_url` varchar(512) DEFAULT NULL COMMENT '检测报告文件URL',
  `images` json DEFAULT NULL COMMENT '现场图片URL列表',
  `tx_hash` varchar(128) DEFAULT NULL,
  `block_height` bigint DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='质检记录表';

--
-- 转存表中的数据 `inspection_records`
--

INSERT INTO `inspection_records` (`id`, `batch_id`, `inspector_id`, `inspect_time`, `inspect_org`, `inspect_addr`, `cert_no`, `pesticide_result`, `heavy_metal_result`, `microbe_result`, `appearance_grade`, `overall_result`, `report_url`, `images`, `tx_hash`, `block_height`, `created_at`) VALUES
(1, 1, 4, '2025-10-28 14:00:00', '阿克苏地区农业农村局检测中心', '新疆阿克苏市农业大厦3楼', 'QC-2025-AKS-001', '合格', '未检出', '合格', '优级', '合格', 'https://images.unsplash.com/photo-1554224155-8d04cb21cd6c?w=400', '[\"https://images.unsplash.com/photo-1576086213369-97a306d36557?w=400\"]', '0x2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c', 1588, '2026-03-12 06:40:37'),
(2, 2, 5, '2025-11-02 10:00:00', '新疆农产品质量检测中心', '乌鲁木齐市农业路88号', 'QC-2025-AKS-002', '合格', '未检出', '合格', '良级', '合格', 'https://images.unsplash.com/photo-1554224155-8d04cb21cd6c?w=400', '[\"https://images.unsplash.com/photo-1576086213369-97a306d36557?w=400\"]', '0x3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d', 1590, '2026-03-12 06:40:37'),
(3, 3, 4, '2025-10-22 14:00:00', '阿克苏地区农业农村局检测中心', '新疆阿克苏市农业大厦3楼', 'QC-2025-AKS-003', '合格', '未检出', '合格', '优级', '合格', 'https://images.unsplash.com/photo-1554224155-8d04cb21cd6c?w=400', '[\"https://images.unsplash.com/photo-1576086213369-97a306d36557?w=400\"]', '0x4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e', 1592, '2026-03-12 06:40:37'),
(4, 4, 5, '2025-11-16 09:00:00', '新疆农产品质量检测中心', '乌鲁木齐市农业路88号', 'QC-2025-AKS-004', '合格', '未检出', '合格', '优级', '合格', 'https://images.unsplash.com/photo-1554224155-8d04cb21cd6c?w=400', '[\"https://images.unsplash.com/photo-1576086213369-97a306d36557?w=400\"]', '0x5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f', 1594, '2026-03-12 06:40:37');

-- --------------------------------------------------------

--
-- 表的结构 `ipfs_files`
--

CREATE TABLE `ipfs_files` (
  `id` bigint NOT NULL,
  `record_id` bigint UNSIGNED NOT NULL,
  `record_type` varchar(32) NOT NULL DEFAULT 'trace' COMMENT '记录类型(trace/planting/harvest/processing/inspection/logistics)',
  `file_name` varchar(128) NOT NULL,
  `file_type` varchar(32) NOT NULL,
  `cid` varchar(128) NOT NULL COMMENT 'IPFS CID',
  `file_url` varchar(512) DEFAULT NULL COMMENT '可访问URL',
  `created_at` datetime(3) DEFAULT NULL,
  `c_id` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='IPFS文件关联表';

--
-- 转存表中的数据 `ipfs_files`
--

INSERT INTO `ipfs_files` (`id`, `record_id`, `record_type`, `file_name`, `file_type`, `cid`, `file_url`, `created_at`, `c_id`) VALUES
(1, 1, 'planting', 'planting_site_A.jpg', 'image', 'QmXoypizjW3WknFiJnKLwHCnL72vedxjQkDDP1mXWo6uco', 'https://images.unsplash.com/photo-1464226184884-fa280b87c399?w=400', '2026-03-12 14:40:38.000', ''),
(2, 1, 'inspection', 'inspection_report_001.pdf', 'report', 'QmYwAPJzv5CZsnA625s3Xf2nemtYgPpHdWEz79ojWnPbdG', 'https://images.unsplash.com/photo-1554224155-8d04cb21cd6c?w=400', '2026-03-12 14:40:38.000', ''),
(3, 1, 'logistics', 'transport_vehicle_001.jpg', 'image', 'QmZTR5bcpQD7cFgTorxoPcqTEbpZfPz4o6Zq4N7v9E2kQW', 'https://images.unsplash.com/photo-1601584115197-04ecc0da31d7?w=400', '2026-03-12 14:40:38.000', ''),
(4, 2, 'planting', 'planting_site_B.jpg', 'image', 'QmT5NvUtoM5nWFfrQdVrFtvgfKFmG7Zp2RCh7PkKZxkL2Z', 'https://images.unsplash.com/photo-1416879595882-3373a0480b5b?w=400', '2026-03-12 14:40:38.000', ''),
(5, 3, 'processing', 'packing_process.jpg', 'image', 'QmPZ9gcCEpqKTo9ikXESmmExKGe4MmCq7JLMbhkidwkZhZ', 'https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?w=400', '2026-03-12 14:40:38.000', '');

-- --------------------------------------------------------

--
-- 表的结构 `logistics_records`
--

CREATE TABLE `logistics_records` (
  `id` bigint NOT NULL,
  `batch_id` bigint NOT NULL,
  `operator_id` bigint NOT NULL COMMENT '物流操作人ID',
  `transport_type` varchar(32) NOT NULL COMMENT '运输方式(road:公路 rail:铁路 air:航空)',
  `vehicle_no` varchar(32) DEFAULT NULL COMMENT '车牌号/运单号',
  `driver_name` varchar(32) DEFAULT NULL COMMENT '司机姓名',
  `driver_phone` varchar(20) DEFAULT NULL COMMENT '司机电话',
  `depart_time` datetime NOT NULL COMMENT '发车时间',
  `arrive_time` datetime DEFAULT NULL COMMENT '到达时间',
  `depart_location` varchar(255) NOT NULL COMMENT '出发地',
  `depart_lat` decimal(10,7) DEFAULT NULL,
  `depart_lng` decimal(10,7) DEFAULT NULL,
  `arrive_location` varchar(255) NOT NULL COMMENT '目的地',
  `arrive_lat` decimal(10,7) DEFAULT NULL,
  `arrive_lng` decimal(10,7) DEFAULT NULL,
  `temp_control` varchar(32) DEFAULT NULL COMMENT '温控要求(如:0-4°C)',
  `current_temp` varchar(16) DEFAULT NULL COMMENT '实时温度',
  `status` varchar(16) NOT NULL DEFAULT 'in_transit' COMMENT '状态(in_transit/arrived)',
  `images` json DEFAULT NULL COMMENT '现场图片URL列表',
  `tx_hash` varchar(128) DEFAULT NULL,
  `block_height` bigint DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='物流追踪表';

--
-- 转存表中的数据 `logistics_records`
--

INSERT INTO `logistics_records` (`id`, `batch_id`, `operator_id`, `transport_type`, `vehicle_no`, `driver_name`, `driver_phone`, `depart_time`, `arrive_time`, `depart_location`, `depart_lat`, `depart_lng`, `arrive_location`, `arrive_lat`, `arrive_lng`, `temp_control`, `current_temp`, `status`, `images`, `tx_hash`, `block_height`, `created_at`) VALUES
(1, 1, 6, 'road', '新A·SF8888', '孙师傅', '13545678901', '2025-11-05 08:00:00', '2025-11-08 18:00:00', '新疆阿克苏温宿县红旗坡农场', 41.2756830, 80.2437560, '上海市浦东新区盒马鲜生配送中心', 31.2304000, 121.4737000, '0~4°C冷链', '2.1°C', 'arrived', '[\"https://images.unsplash.com/photo-1601584115197-04ecc0da31d7?w=400\", \"https://images.unsplash.com/photo-1519003722824-194d4455a60c?w=400\"]', '0x4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e', 1850, '2026-03-12 06:40:37'),
(2, 2, 7, 'road', '新B·JD9999', '周运输', '13456789012', '2025-11-08 07:00:00', '2025-11-11 20:00:00', '新疆阿克苏温宿县示范基地', 41.2812340, 80.2501230, '北京市朝阳区京东生鲜仓储中心', 39.9042000, 116.4074000, '0~4°C冷链', '1.8°C', 'arrived', '[\"https://images.unsplash.com/photo-1601584115197-04ecc0da31d7?w=400\"]', '0x5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f', 1851, '2026-03-12 06:40:37'),
(3, 3, 6, 'road', '新A·SF7777', '孙师傅', '13545678901', '2025-11-01 09:00:00', NULL, '新疆阿克苏红旗坡C区', 41.2689120, 80.2378900, '广州市天河区高端生鲜超市', 23.1291000, 113.2644000, '0~4°C冷链', '2.5°C', 'in_transit', '[\"https://images.unsplash.com/photo-1519003722824-194d4455a60c?w=400\"]', '0x6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a', 1852, '2026-03-12 06:40:37');

-- --------------------------------------------------------

--
-- 表的结构 `operation_logs`
--

CREATE TABLE `operation_logs` (
  `id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL COMMENT '操作用户ID',
  `username` varchar(64) DEFAULT NULL,
  `action` varchar(64) NOT NULL COMMENT '操作动作',
  `module` varchar(32) NOT NULL COMMENT '模块(auth/batch/planting/logistics/cert等)',
  `target_id` bigint DEFAULT NULL COMMENT '操作对象ID',
  `detail` varchar(512) DEFAULT NULL COMMENT '操作详情',
  `ip` varchar(64) DEFAULT NULL COMMENT '客户端IP',
  `user_agent` varchar(256) DEFAULT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'success' COMMENT '结果(success/fail)',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志表';

--
-- 转存表中的数据 `operation_logs`
--

INSERT INTO `operation_logs` (`id`, `user_id`, `username`, `action`, `module`, `target_id`, `detail`, `ip`, `user_agent`, `status`, `created_at`) VALUES
(1, 2, 'farmer_wang', '创建批次', 'batch', 1, '创建批次 BATCH-APPLE-20251025-001', '192.168.1.101', NULL, 'success', '2026-03-12 06:40:38'),
(2, 2, 'farmer_wang', '添加种植记录', 'planting', 1, '为批次1添加种植记录', '192.168.1.101', NULL, 'success', '2026-03-12 06:40:38'),
(3, 4, 'inspector_zhang', '添加质检记录', 'inspection', 1, '为批次1出具质检报告 QC-2025-AKS-001', '192.168.1.102', NULL, 'success', '2026-03-12 06:40:38'),
(4, 6, 'transporter_sun', '添加物流记录', 'logistics', 1, '批次1开始运输，目的地上海', '192.168.1.103', NULL, 'success', '2026-03-12 06:40:38'),
(5, 1, 'admin', '查看用户列表', 'admin', NULL, '管理员查看用户列表', '192.168.1.100', NULL, 'success', '2026-03-12 06:40:38'),
(6, 8, 'retailer_zhao', '查询溯源信息', 'trace', 1, '消费者扫码查询 AKS2025100001', '192.168.1.200', NULL, 'success', '2026-03-12 06:40:38'),
(7, 2, 'farmer_wang', '上传图片', 'planting', 1, '上传种植现场图片2张', '192.168.1.101', NULL, 'success', '2026-03-12 06:40:38'),
(8, 1, 'admin', '生成合格证', 'cert', 1, '为批次1生成电子合格证', '192.168.1.100', NULL, 'success', '2026-03-12 06:40:38');

-- --------------------------------------------------------

--
-- 表的结构 `planting_records`
--

CREATE TABLE `planting_records` (
  `id` bigint NOT NULL,
  `batch_id` bigint NOT NULL COMMENT '关联批次ID',
  `farmer_id` bigint NOT NULL COMMENT '种植户ID',
  `field_name` varchar(128) NOT NULL COMMENT '地块名称',
  `field_area` decimal(10,2) DEFAULT NULL COMMENT '种植面积(亩)',
  `field_lat` decimal(10,7) DEFAULT NULL COMMENT '地块纬度',
  `field_lng` decimal(10,7) DEFAULT NULL COMMENT '地块经度',
  `plant_date` date NOT NULL COMMENT '种植日期',
  `expected_harvest` date DEFAULT NULL COMMENT '预计采收日期',
  `seed_variety` varchar(64) DEFAULT NULL COMMENT '种苗品种',
  `seed_source` varchar(128) DEFAULT NULL COMMENT '种苗来源',
  `fertilizer_type` varchar(128) DEFAULT NULL COMMENT '施肥类型',
  `fertilizer_date` date DEFAULT NULL COMMENT '最近施肥日期',
  `irrigation_type` varchar(64) DEFAULT NULL COMMENT '灌溉方式',
  `irrigation_date` date DEFAULT NULL COMMENT '最近灌溉日期',
  `pesticide_type` varchar(128) DEFAULT NULL COMMENT '农药类型(无/有机/生物)',
  `weeding_date` date DEFAULT NULL COMMENT '最近除草日期',
  `soil_ph` varchar(16) DEFAULT NULL COMMENT '土壤pH值',
  `temperature` varchar(16) DEFAULT NULL COMMENT '环境温度',
  `humidity` varchar(16) DEFAULT NULL COMMENT '环境湿度',
  `images` json DEFAULT NULL COMMENT '现场图片URL列表',
  `tx_hash` varchar(128) DEFAULT NULL COMMENT '区块链交易哈希',
  `block_height` bigint DEFAULT NULL COMMENT '区块高度',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='种植记录表';

--
-- 转存表中的数据 `planting_records`
--

INSERT INTO `planting_records` (`id`, `batch_id`, `farmer_id`, `field_name`, `field_area`, `field_lat`, `field_lng`, `plant_date`, `expected_harvest`, `seed_variety`, `seed_source`, `fertilizer_type`, `fertilizer_date`, `irrigation_type`, `irrigation_date`, `pesticide_type`, `weeding_date`, `soil_ph`, `temperature`, `humidity`, `images`, `tx_hash`, `block_height`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '红旗坡A区果园', 120.50, 41.2756830, 80.2437560, '2025-04-10', '2025-10-25', '冰糖心红富士', '阿克苏地区农业局认证苗木基地', '有机农家肥+复合肥', '2025-06-15', '滴灌', '2025-07-20', '生物农药(低毒)', '2025-07-10', '7.2', '18°C', '42%', '[\"https://images.unsplash.com/photo-1464226184884-fa280b87c399?w=400\", \"https://images.unsplash.com/photo-1500651230702-0e2d8a49d4ad?w=400\"]', '0x8b3a4f9e2d1c5b7a6f8e9d0c1b2a3f4e5d6c7b8a9f0e1d2c3b4a5f6e7d8c9b0a', 1001, '2026-03-12 06:40:37', '2026-03-12 06:40:37'),
(2, 2, 3, '温宿县示范基地B区', 85.00, 41.2812340, 80.2501230, '2025-04-15', '2025-10-30', '红富士', '温宿县农业科技推广站', '有机肥+微量元素肥', '2025-06-20', '漫灌', '2025-07-25', '无农药', '2025-07-15', '7.0', '17°C', '45%', '[\"https://images.unsplash.com/photo-1416879595882-3373a0480b5b?w=400\", \"https://images.unsplash.com/photo-1530836369250-ef72a3f5cda8?w=400\"]', '0x9c4b5f0e3d2c6b8a7f9e0d1c2b3a4f5e6d7c8b9a0f1e2d3c4b5a6f7e8d9c0b1a', 1002, '2026-03-12 06:40:37', '2026-03-12 06:40:37'),
(3, 3, 2, '红旗坡C区精品果园', 45.00, 41.2689120, 80.2378900, '2025-04-08', '2025-10-20', '糖心苹果', '新疆农科院优质苗木', '羊粪有机肥', '2025-06-10', '微喷灌', '2025-07-18', '零农药', '2025-07-08', '7.3', '19°C', '40%', '[\"https://images.unsplash.com/photo-1501004318641-b39e6451bec6?w=400\"]', '0xa1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0a1b2', 1003, '2026-03-12 06:40:37', '2026-03-12 06:40:37');

-- --------------------------------------------------------

--
-- 表的结构 `processing_records`
--

CREATE TABLE `processing_records` (
  `id` bigint NOT NULL,
  `batch_id` bigint NOT NULL,
  `operator_id` bigint NOT NULL COMMENT '操作人ID',
  `operator_phone` varchar(20) DEFAULT NULL COMMENT '操作人电话',
  `process_type` varchar(64) NOT NULL COMMENT '加工类型(cleaning:清洗 drying:烘干 grading:分级 packing:包装)',
  `process_time` datetime NOT NULL COMMENT '加工时间',
  `facility_name` varchar(128) NOT NULL COMMENT '加工设施名称',
  `facility_addr` varchar(255) DEFAULT NULL COMMENT '设施地址',
  `facility_lat` decimal(10,7) DEFAULT NULL,
  `facility_lng` decimal(10,7) DEFAULT NULL,
  `input_quantity` decimal(10,2) DEFAULT NULL COMMENT '投入量(kg)',
  `output_quantity` decimal(10,2) DEFAULT NULL COMMENT '产出量(kg)',
  `pack_spec` varchar(64) DEFAULT NULL COMMENT '包装规格(如:5kg/箱)',
  `pack_material` varchar(64) DEFAULT NULL COMMENT '包装材料',
  `total_boxes` int DEFAULT NULL COMMENT '总箱数',
  `standard_no` varchar(64) DEFAULT NULL COMMENT '执行标准编号',
  `images` json DEFAULT NULL COMMENT '现场图片URL列表',
  `tx_hash` varchar(128) DEFAULT NULL,
  `block_height` bigint DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='加工记录表';

--
-- 转存表中的数据 `processing_records`
--

INSERT INTO `processing_records` (`id`, `batch_id`, `operator_id`, `operator_phone`, `process_type`, `process_time`, `facility_name`, `facility_addr`, `facility_lat`, `facility_lng`, `input_quantity`, `output_quantity`, `pack_spec`, `pack_material`, `total_boxes`, `standard_no`, `images`, `tx_hash`, `block_height`, `created_at`) VALUES
(1, 1, 2, '13901234567', 'cleaning', '2025-10-26 08:00:00', '红旗坡农场清洗车间', '新疆阿克苏温宿县红旗坡农场加工区', 41.2760000, 80.2440000, 5120.00, 5000.00, NULL, '不适用', NULL, 'GB/T 10651-2008', '[\"https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400\"]', '0x4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e', 1600, '2026-03-12 06:40:37'),
(2, 1, 2, '13901234567', 'grading', '2025-10-26 14:00:00', '红旗坡农场分级车间', '新疆阿克苏温宿县红旗坡农场加工区', 41.2760000, 80.2440000, 5000.00, 4800.00, NULL, '不适用', NULL, 'NY/T 1793-2009', '[\"https://images.unsplash.com/photo-1542838132-92c53300491e?w=400\"]', '0x5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f', 1601, '2026-03-12 06:40:37'),
(3, 1, 2, '13901234567', 'packing', '2025-10-27 09:00:00', '红旗坡农场包装车间', '新疆阿克苏温宿县红旗坡农场加工区', 41.2760000, 80.2440000, 4800.00, 4750.00, '5kg/箱', '环保瓦楞纸箱', 950, 'GB/T 13607-1992', '[\"https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?w=400\", \"https://images.unsplash.com/photo-1586528116311-ad8dd3c8310d?w=400\"]', '0x6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a', 1602, '2026-03-12 06:40:37'),
(4, 2, 3, '13812345678', 'cleaning', '2025-10-31 08:00:00', '温宿县农产品加工中心', '新疆阿克苏温宿县工业园区', 41.2815000, 80.2505000, 3050.00, 2980.00, NULL, '不适用', NULL, 'GB/T 10651-2008', '[\"https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400\"]', '0x7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b', 1603, '2026-03-12 06:40:37'),
(5, 2, 3, '13812345678', 'packing', '2025-10-31 14:00:00', '温宿县农产品加工中心', '新疆阿克苏温宿县工业园区', 41.2815000, 80.2505000, 2980.00, 2950.00, '5kg/箱', '环保纸箱', 590, 'GB/T 13607-1992', '[\"https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?w=400\"]', '0x8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c', 1604, '2026-03-12 06:40:37');

-- --------------------------------------------------------

--
-- 表的结构 `trace_records`
--

CREATE TABLE `trace_records` (
  `id` bigint NOT NULL,
  `batch_id` bigint NOT NULL,
  `node_type` varchar(32) NOT NULL,
  `operator_id` bigint NOT NULL,
  `operation_time` datetime(3) NOT NULL,
  `location` varchar(255) NOT NULL,
  `env_data` json DEFAULT NULL,
  `tx_hash` varchar(128) DEFAULT NULL,
  `block_height` bigint DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='溯源节点流转表';

--
-- 转存表中的数据 `trace_records`
--

INSERT INTO `trace_records` (`id`, `batch_id`, `node_type`, `operator_id`, `operation_time`, `location`, `env_data`, `tx_hash`, `block_height`, `created_at`) VALUES
(1, 1, 'planting', 2, '2025-04-10 10:30:00.000', '新疆阿克苏温宿县红旗坡A区', '{\"soil_ph\": \"7.2\", \"humidity\": \"42%\", \"pesticide\": \"生物农药\", \"fertilizer\": \"有机农家肥\", \"temperature\": \"18°C\"}', '0x8b3a4f9e2d1c5b7a6f8e9d0c1b2a3f4e5d6c7b8a9f0e1d2c3b4a5f6e7d8c9b0a', 1001, '2026-03-12 14:40:38.000'),
(2, 1, 'harvesting', 2, '2025-10-25 09:00:00.000', '新疆阿克苏温宿县红旗坡A区', '{\"method\": \"人工采摘\", \"weather\": \"晴\", \"actual_qty\": \"5120kg\", \"sugar_content\": \"18.5%\"}', '0x1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b', 1502, '2026-03-12 14:40:38.000'),
(3, 1, 'inspecting', 4, '2025-10-28 14:00:00.000', '阿克苏地区农业农村局检测中心', '{\"cert_no\": \"QC-2025-AKS-001\", \"appearance\": \"优级\", \"heavy_metal\": \"未检出\", \"pesticide_residue\": \"合格\"}', '0x2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c', 1588, '2026-03-12 14:40:38.000'),
(4, 1, 'processing', 2, '2025-10-27 09:00:00.000', '红旗坡农场包装车间', '{\"pack_spec\": \"5kg/箱\", \"total_boxes\": 950, \"process_type\": \"清洗/分级/包装\"}', '0x3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d', 1605, '2026-03-12 14:40:38.000'),
(5, 1, 'transporting', 6, '2025-11-05 08:00:00.000', '新疆阿克苏→上海浦东', '{\"dest\": \"上海市浦东新区\", \"driver\": \"孙师傅\", \"vehicle_no\": \"新A·SF8888\", \"temp_control\": \"0-4°C冷链\"}', '0x4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e', 1850, '2026-03-12 14:40:38.000'),
(6, 1, 'retailing', 8, '2025-11-09 09:00:00.000', '盒马鲜生(上海浦东店)', '{\"shelf_no\": \"A-01\", \"shelf_life\": \"30天\", \"retail_price\": \"15.8元/kg\", \"storage_temp\": \"4°C\"}', '0x5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f', 2100, '2026-03-12 14:40:38.000');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` bigint NOT NULL COMMENT '主键ID',
  `username` varchar(64) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `real_name` varchar(64) NOT NULL,
  `role` varchar(32) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `avatar` varchar(512) DEFAULT NULL,
  `org_name` varchar(128) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1',
  `last_login_at` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户角色表';

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `real_name`, `role`, `phone`, `email`, `avatar`, `org_name`, `is_active`, `status`, `last_login_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2b$10$kTGq9ZP9T50XT33GRSR9uOR8LsxV2CsZcI3hJmF6gZOlYNgFH2JR2', '系统管理员', 'admin', '13800000000', 'admin@aksutrace.com', NULL, '农产品溯源平台', 1, 1, '2026-03-19 18:47:20.068', '2026-03-12 14:40:37.000', '2026-03-19 18:47:20.106'),
(2, 'farmer_wang', '$2b$10$5oc9AKzK33xAmjaAnf6qoudZkjsZws6b1LOZ5eGUQ0wwbklOStLOG', '王建国', 'farmer', '13901234567', 'wangjg@farm.com', NULL, '红旗坡农场专业合作社', 1, 1, '2026-03-19 18:04:14.646', '2026-03-12 14:40:37.000', '2026-03-19 18:04:14.684'),
(3, 'farmer_li', '$2b$10$8l3l3EXSj65ko4DHzn7Zy.eXX2O.do0s2TeOzRQ64ycoiBxo2SqfC', '李秀英', 'farmer', '13812345678', 'lixiuying@farm.com', NULL, '温宿县苹果种植基地', 1, 1, '2026-03-19 18:44:44.438', '2026-03-12 14:40:37.000', '2026-03-19 18:44:44.478'),
(4, 'inspector_zhang', '$2b$10$35kkiiJcIbZndKqHm/ek1u17wVyTQ7odFX6pBP75cMYEUaoq2nTYS', '张质检', 'inspector', '13723456789', 'zhangqj@aks-agri.gov.cn', NULL, '地区农业农村局', 1, 1, NULL, '2026-03-12 14:40:37.000', '2026-03-12 14:40:37.000'),
(5, 'inspector_chen', '$2b$10$RRdxP63kTW38lFyaPQd8BucXr7iz60Gr6snTwkUHzf2r.EXDkBxha', '陈检测', 'inspector', '13634567890', 'chenjianche@lab.com', NULL, '农产品质量检测中心', 1, 1, NULL, '2026-03-12 14:40:37.000', '2026-03-12 14:40:37.000'),
(6, 'transporter_sun', '$2b$10$kTGq9ZP9T50XT33GRSR9uOR8LsxV2CsZcI3hJmF6gZOlYNgFH2JR2', '孙师傅', 'transporter', '13545678901', 'sunwuliu@sf-cold.com', NULL, '冷链物流公司', 1, 1, '2026-03-19 17:17:24.645', '2026-03-12 14:40:37.000', '2026-03-19 17:17:24.687'),
(7, 'transporter_zhou', '$2b$10$5oc9AKzK33xAmjaAnf6qoudZkjsZws6b1LOZ5eGUQ0wwbklOStLOG', '周运输', 'transporter', '13456789012', 'zhouwuliu@jd-logistics.com', NULL, '物流公司(阿克苏站)', 1, 1, NULL, '2026-03-12 14:40:37.000', '2026-03-12 14:40:37.000'),
(8, 'retailer_zhao', '$2b$10$8l3l3EXSj65ko4DHzn7Zy.eXX2O.do0s2TeOzRQ64ycoiBxo2SqfC', '赵店长', 'retailer', '13367890123', 'zhaosc@hema.com', NULL, '鲜生超市(上海浦东店)', 1, 1, NULL, '2026-03-12 14:40:37.000', '2026-03-12 14:40:37.000'),
(9, 'retailer_wu', '$2b$10$35kkiiJcIbZndKqHm/ek1u17wVyTQ7odFX6pBP75cMYEUaoq2nTYS', '吴经理', 'retailer', '13278901234', 'wujl@jd-fresh.com', NULL, '生鲜超市(北京旗舰店)', 1, 1, NULL, '2026-03-12 14:40:37.000', '2026-03-12 14:40:37.000'),
(10, 'consumer_test', '$2b$10$RRdxP63kTW38lFyaPQd8BucXr7iz60Gr6snTwkUHzf2r.EXDkBxha', '测试消费者', 'consumer', '13189012345', 'consumer@test.com', NULL, NULL, 1, 1, NULL, '2026-03-12 14:40:37.000', '2026-03-12 14:40:37.000');

--
-- 转储表的索引
--

--
-- 表的索引 `agri_batches`
--
ALTER TABLE `agri_batches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_agri_batches_batch_no` (`batch_no`),
  ADD UNIQUE KEY `idx_agri_batches_trace_code` (`trace_code`),
  ADD KEY `idx_farmer_id` (`farmer_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_agri_batches_farmer_id` (`farmer_id`);

--
-- 表的索引 `captchas`
--
ALTER TABLE `captchas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_captchas_key` (`key`);

--
-- 表的索引 `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_certificates_batch_id` (`batch_id`),
  ADD UNIQUE KEY `idx_certificates_cert_no` (`cert_no`),
  ADD KEY `idx_batch_id` (`batch_id`);

--
-- 表的索引 `dashboard_stats`
--
ALTER TABLE `dashboard_stats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_dashboard_stats_stat_date` (`stat_date`);

--
-- 表的索引 `harvest_records`
--
ALTER TABLE `harvest_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_batch_id` (`batch_id`);

--
-- 表的索引 `inspection_records`
--
ALTER TABLE `inspection_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_batch_id` (`batch_id`);

--
-- 表的索引 `ipfs_files`
--
ALTER TABLE `ipfs_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_id` (`record_id`),
  ADD KEY `idx_ipfs_files_record_id` (`record_id`);

--
-- 表的索引 `logistics_records`
--
ALTER TABLE `logistics_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_batch_id` (`batch_id`);

--
-- 表的索引 `operation_logs`
--
ALTER TABLE `operation_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- 表的索引 `planting_records`
--
ALTER TABLE `planting_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_batch_id` (`batch_id`),
  ADD KEY `idx_farmer_id` (`farmer_id`);

--
-- 表的索引 `processing_records`
--
ALTER TABLE `processing_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_batch_id` (`batch_id`);

--
-- 表的索引 `trace_records`
--
ALTER TABLE `trace_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_batch_id` (`batch_id`),
  ADD KEY `idx_node_type` (`node_type`),
  ADD KEY `idx_trace_records_batch_id` (`batch_id`),
  ADD KEY `idx_trace_records_node_type` (`node_type`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_users_username` (`username`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `agri_batches`
--
ALTER TABLE `agri_batches`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `captchas`
--
ALTER TABLE `captchas`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- 使用表AUTO_INCREMENT `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `dashboard_stats`
--
ALTER TABLE `dashboard_stats`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `harvest_records`
--
ALTER TABLE `harvest_records`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `inspection_records`
--
ALTER TABLE `inspection_records`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `ipfs_files`
--
ALTER TABLE `ipfs_files`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `logistics_records`
--
ALTER TABLE `logistics_records`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `operation_logs`
--
ALTER TABLE `operation_logs`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `planting_records`
--
ALTER TABLE `planting_records`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `processing_records`
--
ALTER TABLE `processing_records`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `trace_records`
--
ALTER TABLE `trace_records`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID', AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
