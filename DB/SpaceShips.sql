-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SpaceShips
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `SpaceShips` ;

-- -----------------------------------------------------
-- Schema SpaceShips
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SpaceShips` DEFAULT CHARACTER SET utf8 ;
USE `SpaceShips` ;

-- -----------------------------------------------------
-- Table `SpaceShips`.`ship`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SpaceShips`.`ship` ;

CREATE TABLE IF NOT EXISTS `SpaceShips`.`ship` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `empire` ENUM('AMARR', 'CALDARI', 'MINMATAR', 'GALLENTE') NOT NULL DEFAULT 'AMARR',
  `type` ENUM('FRIGATE', 'CRUISER', 'BATTLECRUISER', 'BATTLESHIP') NOT NULL DEFAULT 'FRIGATE',
  `speed_warp` INT NULL DEFAULT 0,
  `speed_velocity` INT NULL DEFAULT 0,
  `time_to_warp` DECIMAL(10,2) NULL DEFAULT 0.0,
  `radar_range` DECIMAL(10,2) NULL DEFAULT 0.0,
  `cargo_capacity` INT UNSIGNED NULL DEFAULT 0,
  `mass` INT UNSIGNED NULL DEFAULT 0,
  `description` TEXT NULL,
  `cost` INT UNSIGNED NULL DEFAULT 0,
  `image` VARCHAR(1000) NULL DEFAULT 'http://games.chruker.dk/eve_online/graphics/ids/256/3117_2009.jpg',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS commander;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'commander' IDENTIFIED BY 'commander';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE `SpaceShips`.* TO 'commander';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `SpaceShips`.`ship`
-- -----------------------------------------------------
START TRANSACTION;
USE `SpaceShips`;
INSERT INTO `SpaceShips`.`ship` (`id`, `name`, `empire`, `type`, `speed_warp`, `speed_velocity`, `time_to_warp`, `radar_range`, `cargo_capacity`, `mass`, `description`, `cost`, `image`) VALUES (1, 'Crucifier', 'Amarr', 'Frigate', 5, 350, 4.94, 64.00, 265, 1064000, 'Some Text 1', 25000, 'https://wiki.eveuniversity.org/images/thumb/a/a2/Crucifier.jpg/256px-Crucifier.jpg');
INSERT INTO `SpaceShips`.`ship` (`id`, `name`, `empire`, `type`, `speed_warp`, `speed_velocity`, `time_to_warp`, `radar_range`, `cargo_capacity`, `mass`, `description`, `cost`, `image`) VALUES (2, 'Thorax', 'Gallente', 'Cruiser', 3, 240, 7.66, 52.50, 465, 11280000, 'Some Text 2', 1500000, 'https://wiki.eveuniversity.org/images/thumb/8/89/Thorax.jpg/256px-Thorax.jpg');
INSERT INTO `SpaceShips`.`ship` (`id`, `name`, `empire`, `type`, `speed_warp`, `speed_velocity`, `time_to_warp`, `radar_range`, `cargo_capacity`, `mass`, `description`, `cost`, `image`) VALUES (3, 'Megathron', 'Gallente', 'Battleship', 2, 122, 15.55, 87.00, 845, 98400000, 'Some Text 3', 60000000, 'https://wiki.eveuniversity.org/images/thumb/e/e4/Megathron.jpg/256px-Megathron.jpg');

COMMIT;

