/*
 Navicat Premium Data Transfer

 Source Server         : 8.1
 Source Server Type    : MySQL
 Source Server Version : 100425
 Source Host           : localhost:3381
 Source Schema         : lara_test_lnj

 Target Server Type    : MySQL
 Target Server Version : 100425
 File Encoding         : 65001

 Date: 07/07/2023 00:12:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_data
-- ----------------------------
DROP TABLE IF EXISTS `tb_data`;
CREATE TABLE `tb_data`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Create_Date` date NULL DEFAULT NULL,
  `CARP_Code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Initiator` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Initiator_Div` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Initiator_Branch` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Recipient` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Recipient_Div` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Recipient_Branch` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Verified_By` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `Due_Date` date NULL DEFAULT NULL,
  `Effectiveness` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `Status_Date` date NULL DEFAULT NULL,
  `Stage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_data
-- ----------------------------
INSERT INTO `tb_data` VALUES (2, '2021-11-15', 'CARP00088', 'internal audit findings, non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'FIN CASEY', 'KEY ACCOUNT', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-12-15', 'Effective', '2021-11-16', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (4, '2021-11-04', 'CARP00086', 'oportunity for improvement', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'NAMORITA \"NITA\" PRENTISS', 'COMMERCIAL', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-12-04', 'Effective', '2021-11-17', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (5, '2021-10-22', 'CARP00085', 'non conformity', 'BARBARA \"BOBBI\" MORSE', 'SALES', 'SUB', 'STEPHEN VINCENT STRANGE', 'KEY ACCOUNT', 'SUB', '', '2021-11-21', '', '2021-10-22', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (6, '2021-10-15', 'CARP00084', 'internal audit findings, non conformity', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'DEREK MORGAN', 'KEY ACCOUNT', 'SUB', '', '2021-11-14', '', '2021-10-15', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (7, '2021-10-15', 'CARP00083', 'internal audit findings, non conformity', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'DEREK MORGAN', 'KEY ACCOUNT', 'SUB', '', '2021-11-14', '', '2021-10-15', 'Voided', 'Canceled');
INSERT INTO `tb_data` VALUES (8, '2021-10-14', 'CARP00082', 'non conformity, external complain', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'CATHRINE MORA', 'KEY ACCOUNT', 'SUB', '', '2021-11-13', '', '2021-10-14', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (9, '2021-10-07', 'CARP00081', 'internal audit findings, non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'CLINT BARTON', 'TRUCKING', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-11-06', 'Effective', '2021-11-16', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (10, '2021-10-07', 'CARP00080', 'internal audit findings, non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'PATSY WALKER', 'CR', 'JKT', '', '2021-11-06', '', '2021-10-07', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (11, '2021-09-27', 'CARP00079', 'internal audit findings, non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'CLINT BARTON', 'TRUCKING', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-10-27', 'Effective', '2021-11-16', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (12, '2021-09-27', 'CARP00078', 'internal audit findings, safety non compliance', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'CLINT BARTON', 'TRUCKING', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-10-27', 'Effective', '2021-10-26', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (13, '2021-09-27', 'CARP00077', 'internal audit findings, non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'ELEKTRA NATCHIOS', 'HSE', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-10-27', 'Effective', '2021-11-12', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (14, '2021-08-23', 'CARP00074', 'non conformity', 'NAMORITA \"NITA\" PRENTISS', 'COMMERCIAL', 'SUB', 'DEREK MORGAN', 'CR', 'SUB', '', '2021-10-08', '', '2021-09-08', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (15, '2021-08-20', 'CARP00073', 'non conformity', 'NAMORITA \"NITA\" PRENTISS', 'COMMERCIAL', 'SUB', 'DEREK MORGAN', 'CR', 'SUB', '', '2021-09-19', '', '2021-08-27', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (16, '2021-08-20', 'CARP00071', 'internal complain, kpi bsc monitoring', 'JOHN JONAH JAMESON', 'COMMERCIAL', 'SUB', 'DEREK MORGAN', 'CR', 'SUB', '', '2021-09-19', '', '2021-08-20', 'Voided', 'Canceled');
INSERT INTO `tb_data` VALUES (17, '2021-08-20', 'CARP00070', 'internal complain, kpi bsc monitoring', 'JOHN JONAH JAMESON', 'COMMERCIAL', 'SUB', 'ROBERT BRUCE BANNER', 'CR', 'SUB', '', '2021-09-19', '', '2021-08-20', 'Voided', 'Canceled');
INSERT INTO `tb_data` VALUES (18, '2021-08-20', 'CARP00069', 'internal complain, kpi bsc monitoring', 'JOHN JONAH JAMESON', 'COMMERCIAL', 'SUB', 'ROBERT BRUCE BANNER', 'CR', 'SUB', '', '2021-09-19', '', '2021-08-20', 'Voided', 'Canceled');
INSERT INTO `tb_data` VALUES (19, '2021-08-05', 'CARP00068', 'internal audit findings, non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'CAMELLIA', 'CC', 'SUB', '', '2021-09-04', '', '2021-08-05', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (20, '2021-08-05', 'CARP00067', 'non conformity', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'DEREK MORGAN', 'CR', 'SUB', '', '2021-09-04', '', '2021-08-27', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (21, '2021-08-05', 'CARP00066', 'non conformity', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'DEREK MORGAN', 'CR', 'SUB', '', '2021-09-04', '', '2021-08-05', 'Voided', 'Canceled');
INSERT INTO `tb_data` VALUES (22, '2021-07-30', 'CARP00065', 'non conformity', 'JANET VAN DYNE', 'KEY ACCOUNT', 'SUB', 'STEPHEN VINCENT STRANGE', 'KEY ACCOUNT', 'SUB', '', '2021-08-29', '', '2021-07-30', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (23, '2021-07-30', 'CARP00064', 'non conformity', 'STEPHEN VINCENT STRANGE', 'KEY ACCOUNT', 'SUB', 'CAMELLIA', 'OPERATION', 'SUB', '', '2021-08-29', '', '2021-09-23', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (24, '2021-07-30', 'CARP00063', 'non conformity, external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'DEREK MORGAN', 'KEY ACCOUNT', 'SUB', '', '2021-08-29', '', '2021-07-30', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (25, '2021-07-02', 'CARP00062', 'safety non compliance, external complain', 'ELEKTRA NATCHIOS', 'HSE', 'SUB', 'CLINT BARTON', 'TRUCKING', 'SUB', 'ELEKTRA NATCHIOS', '2021-08-01', 'Effective', '2021-07-15', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (26, '2021-07-02', 'CARP00061', 'safety non compliance, external complain', 'ELEKTRA NATCHIOS', 'HSE', 'SUB', 'CLINT BARTON', 'TRUCKING', 'SUB', '', '2021-08-01', '', '2021-07-02', 'Voided', 'Canceled');
INSERT INTO `tb_data` VALUES (27, '2021-06-14', 'CARP00060', 'internal audit findings, oportunity for improvemen', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'CAIN MARKO', 'HR&GA', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-07-14', 'Effective', '2021-07-01', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (28, '2021-06-14', 'CARP00059', 'internal audit findings, non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'CAIN MARKO', 'HR&GA', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-07-14', 'Effective', '2021-07-07', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (29, '2021-06-02', 'CARP00058', 'internal audit findings, non conformity, external ', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'DEREK MORGAN', 'CR', 'SUB', '', '2021-07-02', '', '2021-06-02', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (30, '2021-05-28', 'CARP00057', 'internal audit findings, non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'JEAN GREY', 'PROCUREMENT', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-06-27', 'Effective', '2021-07-08', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (31, '2021-05-28', 'CARP00056', 'internal audit findings, oportunity for improvemen', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'JEAN GREY', 'PROCUREMENT', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-06-27', 'Effective', '2021-07-08', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (32, '2021-05-28', 'CARP00055', 'internal audit findings, non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'JEAN GREY', 'PROCUREMENT', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-06-27', 'Effective', '2021-07-08', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (33, '2021-05-25', 'CARP00054', 'internal audit findings, non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'MILES BULLOCK', 'HR&GA', 'SUB', '', '2021-06-24', '', '2021-05-25', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (34, '2021-05-25', 'CARP00053', 'internal audit findings, oportunity for improvemen', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'MILES BULLOCK', 'HR&GA', 'SUB', '', '2021-06-24', '', '2021-05-25', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (35, '2021-05-25', 'CARP00052', 'internal audit findings, non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'NAMORITA \"NITA\" PRENTISS', 'COMMERCIAL', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-06-24', 'Effective', '2021-07-06', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (36, '2021-05-25', 'CARP00051', 'internal complain', 'CAMELLIA', 'OPERATION', 'SUB', 'MILES BULLOCK', 'HR&GA', 'SUB', '', '2021-06-24', '', '2021-05-27', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (37, '2021-05-25', 'CARP00050', 'internal audit findings, non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'DEREK MORGAN', 'CR', 'SUB', '', '2021-06-24', 'Not Effective', '2021-05-25', 'Re-Open', 'Open');
INSERT INTO `tb_data` VALUES (38, '2021-05-19', 'CARP00049', 'oportunity for improvement', 'CATHRINE MORA', 'KEY ACCOUNT', 'SUB', 'GAMORA', 'OPERATION', 'SUB', 'CATHRINE MORA', '2021-06-18', 'Effective', '2021-10-14', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (39, '2021-05-18', 'CARP00048', 'internal audit findings, non conformity', 'JANET VAN DYNE', 'MANAGEMENT', 'SUB', 'FIN CASEY', 'KEY ACCOUNT', 'SUB', '', '2021-06-17', '', '2021-05-18', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (40, '2021-04-28', 'CARP00047', 'internal audit findings, oportunity for improvemen', 'JANET VAN DYNE', 'MANAGEMENT', 'SUB', 'STEPHEN VINCENT STRANGE', 'KEY ACCOUNT', 'SUB', 'JANET VAN DYNE', '2021-05-28', 'Not Effective', '2021-05-19', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (41, '2021-04-27', 'CARP00046', 'non conformity, external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'DEREK MORGAN', 'CR', 'SUB', '', '2021-05-27', '', '2021-04-27', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (42, '2021-04-27', 'CARP00045', 'non conformity, external complain', 'MATT MURDOCK', 'HSE', 'SUB', 'GAMORA', 'OPERATION', 'SUB', '', '2021-05-27', '', '2021-07-06', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (43, '2021-04-26', 'CARP00044', 'oportunity for improvement, external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'CAMELLIA', 'OPERATION', 'SUB', '', '2021-05-26', '', '2021-07-06', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (44, '2021-04-26', 'CARP00043', 'external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'DEREK MORGAN', 'CR', 'SUB', '', '2021-05-26', '', '2021-04-26', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (45, '2021-04-26', 'CARP00042', 'oportunity for improvement, external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'CAMELLIA', 'OPERATION', 'SUB', '', '2021-05-26', '', '2021-04-26', 'Voided', 'Canceled');
INSERT INTO `tb_data` VALUES (46, '2021-04-23', 'CARP00041', 'external complain', 'JANET VAN DYNE', 'MANAGEMENT', 'SUB', 'CAMELLIA', 'CR', 'SUB', '', '2021-05-23', '', '2021-05-24', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (47, '2021-04-22', 'CARP00040', 'safety non compliance', 'MATT MURDOCK', 'HSE', 'SUB', 'CLINT BARTON', 'TRUCKING', 'SUB', 'MATT MURDOCK', '2021-05-23', 'Effective', '2021-05-04', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (48, '2021-04-16', 'CARP00039', 'non conformity', 'JANET VAN DYNE', 'MANAGEMENT', 'SUB', 'STEPHEN VINCENT STRANGE', 'KEY ACCOUNT', 'SUB', 'JANET VAN DYNE', '2021-05-16', 'Effective', '2021-11-15', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (49, '2021-04-14', 'CARP00038', 'internal audit findings, oportunity for improvemen', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'JAMES MADROX', 'IT', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-05-14', 'Effective', '2021-05-05', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (50, '2021-04-06', 'CARP00037', 'external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'DEREK MORGAN', 'CR', 'SUB', '', '2021-05-08', '', '2021-07-15', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (51, '2021-03-26', 'CARP00036', 'non conformity', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'DEREK MORGAN', 'CR', 'SUB', '', '2021-04-25', '', '2021-04-06', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (52, '2021-03-18', 'CARP00035', 'non conformity, external complain', 'JANET VAN DYNE', 'MANAGEMENT', 'SUB', 'CATHRINE MORA', 'KEY ACCOUNT', 'SUB', 'JANET VAN DYNE', '2021-04-17', 'Not Effective', '2021-10-14', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (53, '2021-03-18', 'CARP00034', 'internal audit findings', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'JEAN GREY', 'PROCUREMENT', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-04-17', 'Effective', '2021-04-23', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (54, '2021-03-09', 'CARP00033', 'external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'CAMELLIA', 'OPERATION', 'SUB', 'WANDA MAXIMOFF', '2021-04-08', 'Not Effective', '2021-11-22', 'Verified', 'Open');
INSERT INTO `tb_data` VALUES (55, '2021-03-09', 'CARP00032', 'external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'CAMELLIA', 'OPERATION', 'SUB', '', '2021-04-08', '', '2021-03-09', 'Voided', 'Canceled');
INSERT INTO `tb_data` VALUES (56, '2021-03-09', 'CARP00031', 'external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'CAMELLIA', 'OPERATION', 'SUB', '', '2021-04-08', '', '2021-03-09', 'Voided', 'Canceled');
INSERT INTO `tb_data` VALUES (57, '2021-03-04', 'CARP00030', 'internal audit findings, non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'JEAN GREY', 'PROCUREMENT', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-04-03', 'Effective', '2021-03-18', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (58, '2021-03-03', 'CARP00029', 'safety non compliance, external complain', 'DEREK MORGAN', 'CR', 'SUB', 'CAMELLIA', 'OPERATION', 'SUB', '', '2021-04-02', '', '2021-07-05', 'Responded', 'Open');
INSERT INTO `tb_data` VALUES (59, '2021-03-02', 'CARP00028', 'external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'STEPHEN VINCENT STRANGE', 'KEY ACCOUNT', 'SUB', 'WANDA MAXIMOFF', '2021-04-02', 'Effective', '2021-03-12', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (60, '2021-02-23', 'CARP00027', 'safety non compliance, external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'PATSY WALKER', 'OPERATION', 'JKT', '', '2021-03-25', '', '2021-02-24', 'Open', 'Open');
INSERT INTO `tb_data` VALUES (61, '2021-02-23', 'CARP00026', 'external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'CAMELLIA', 'OPERATION', 'SUB', 'WANDA MAXIMOFF', '2021-03-25', 'Not Effective', '2021-05-04', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (62, '2021-02-22', 'CARP00025', 'internal audit findings, non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-03-24', 'Effective', '2021-07-07', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (63, '2021-02-19', 'CARP00024', 'non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'DEREK MORGAN', 'CR', 'SUB', '', '2021-03-21', 'Not Effective', '2021-05-19', 'Re-Open', 'Open');
INSERT INTO `tb_data` VALUES (64, '2021-02-08', 'CARP00023', 'external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'CAMELLIA', 'OPERATION', 'SUB', 'WANDA MAXIMOFF', '2021-03-17', 'Effective', '2021-04-22', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (65, '2021-02-02', 'CARP00022', 'internal audit findings, non conformity', 'NATALIA ALIANOVNA ROMANOVA', 'IC', 'SUB', 'CAIN MARKO', 'HR&GA', 'SUB', 'NATALIA ALIANOVNA ROMANOVA', '2021-03-04', 'Effective', '2021-03-01', 'Closed', 'Closed');
INSERT INTO `tb_data` VALUES (66, '2021-01-28', 'CARP00021', 'external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'CAMELLIA', 'CC', 'SUB', '', '2021-02-27', '', '2021-01-28', 'Voided', 'Canceled');
INSERT INTO `tb_data` VALUES (67, '2021-01-28', 'CARP00020', 'external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'CAMELLIA', 'OPERATION', 'SUB', '', '2021-02-27', 'Not Effective', '2021-06-02', 'Re-Open', 'Open');
INSERT INTO `tb_data` VALUES (68, '2021-01-27', 'CARP00019', 'external complain', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'CAMELLIA', 'OPERATION', 'SUB', '', '2021-02-27', '', '2021-01-28', 'Voided', 'Canceled');
INSERT INTO `tb_data` VALUES (69, '2021-01-14', 'CARP00016', 'non conformity, external complain', 'DEREK MORGAN', 'CR', 'SUB', 'CAMELLIA', 'OPERATION', 'SUB', '', '2021-02-13', '', '2021-04-09', 'Responded', 'Open');
INSERT INTO `tb_data` VALUES (70, '2021-01-13', 'CARP00015', 'non conformity, external complain', 'DEREK MORGAN', 'CR', 'SUB', 'CAMELLIA', 'OPERATION', 'SUB', '', '2021-03-19', '', '2021-03-15', 'Responded', 'Open');
INSERT INTO `tb_data` VALUES (71, '2023-07-06', 'CARP00089', 'internal audit findings, non conformity', 'WANDA MAXIMOFF', 'SALES', 'SUB', 'ELLIE CAMACHO', 'OPERATION', 'JKT', NULL, '2021-12-15', NULL, '2021-11-15', 'Open', 'Closed');

SET FOREIGN_KEY_CHECKS = 1;
