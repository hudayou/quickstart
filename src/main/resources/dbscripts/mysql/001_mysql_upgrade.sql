DROP DATABASE if exists quickstart;
CREATE DATABASE quickstart
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;
GRANT all ON quickstart.* TO quickstart@'%'
    IDENTIFIED BY 'quickstart';
GRANT all ON quickstart.* TO quickstart@localhost
    IDENTIFIED BY 'quickstart';
CREATE TABLE quickstart.Person (
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(45) NOT NULL,
    lastName VARCHAR(45) NOT NULL,
    PRIMARY KEY(id)
)
ENGINE = InnoDB;
