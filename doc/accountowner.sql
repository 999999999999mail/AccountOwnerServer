/*
 Navicat MySQL Data Transfer

 Source Server         : 192.168.149.34
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : 192.168.149.34:3306
 Source Schema         : accountowner

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 08/12/2019 13:14:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `AccountId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DateCreated` date NOT NULL,
  `AccountType` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OwnerId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`AccountId`) USING BTREE,
  INDEX `fk_Account_Owner`(`OwnerId`) USING BTREE,
  CONSTRAINT `fk_Account_Owner` FOREIGN KEY (`OwnerId`) REFERENCES `owner` (`OwnerId`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('03e91478-5608-4132-a753-d494dafce00b', '2003-12-15', 'Domestic', 'f98e4d74-0f68-4aac-89fd-047f1aaca6b6');
INSERT INTO `account` VALUES ('356a5a9b-64bf-4de0-bc84-5395a1fdc9c4', '1996-02-15', 'Domestic', '261e1685-cf26-494c-b17c-3546e65f5620');
INSERT INTO `account` VALUES ('371b93f2-f8c5-4a32-894a-fc672741aa5b', '1999-05-04', 'Domestic', '24fd81f8-d58a-4bcc-9f35-dc6cd5641906');
INSERT INTO `account` VALUES ('670775db-ecc0-4b90-a9ab-37cd0d8e2801', '1999-12-21', 'Savings', '24fd81f8-d58a-4bcc-9f35-dc6cd5641906');
INSERT INTO `account` VALUES ('a3fbad0b-7f48-4feb-8ac0-6d3bbc997bfc', '2010-05-28', 'Domestic', 'a3c1880c-674c-4d18-8f91-5d3608a2c937');
INSERT INTO `account` VALUES ('aa15f658-04bb-4f73-82af-82db49d0fbef', '1999-05-12', 'Foreign', '24fd81f8-d58a-4bcc-9f35-dc6cd5641906');
INSERT INTO `account` VALUES ('c6066eb0-53ca-43e1-97aa-3c2169eec659', '1996-02-16', 'Foreign', '261e1685-cf26-494c-b17c-3546e65f5620');
INSERT INTO `account` VALUES ('eccadf79-85fe-402f-893c-32d3f03ed9b1', '2010-06-20', 'Foreign', 'a3c1880c-674c-4d18-8f91-5d3608a2c937');

-- ----------------------------
-- Table structure for owner
-- ----------------------------
DROP TABLE IF EXISTS `owner`;
CREATE TABLE `owner`  (
  `OwnerId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`OwnerId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of owner
-- ----------------------------
INSERT INTO `owner` VALUES ('24fd81f8-d58a-4bcc-9f35-dc6cd5641906', 'John Keen', '1980-12-05', '61 Wellfield Road');
INSERT INTO `owner` VALUES ('261e1685-cf26-494c-b17c-3546e65f5620', 'Anna Bosh', '1974-11-14', '27 Colored Row');
INSERT INTO `owner` VALUES ('a3c1880c-674c-4d18-8f91-5d3608a2c937', 'Sam Query', '1990-04-22', '91 Western Roads');
INSERT INTO `owner` VALUES ('f98e4d74-0f68-4aac-89fd-047f1aaca6b6', 'Martin Miller', '1983-05-21', '3 Edgar Buildings');

SET FOREIGN_KEY_CHECKS = 1;
