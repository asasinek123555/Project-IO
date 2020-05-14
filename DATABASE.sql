CREATE TABLE IF NOT EXISTS `Użytkownicy`		(`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 	`login` TEXT, `hasło` VARCHAR(32), `nazwa` TEXT, `data rejstracji` DATA, `status` TEXT);
CREATE TABLE IF NOT EXISTS `Reputacja`			(`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 	`id_Użytkownicy` INT, `nadał` INT, `wartość` INT, FOREIGN KEY(`id_Użytkownicy`) REFERENCES Persons(``));
CREATE TABLE IF NOT EXISTS `Historia nazw`		(`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 	`id_Użytkownicy` INT, `nazwa` TEXT, `data` DATA, FOREIGN KEY(`id_Użytkownicy`) REFERENCES Persons(``));
CREATE TABLE IF NOT EXISTS `Znajomi`			(`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 	`id_Użytkownicy` INT, `znajomy` INT, FOREIGN KEY(`id_Użytkownicy`) REFERENCES Persons(``), FOREIGN KEY(`znajomy`) REFERENCES Persons(``));

CREATE TABLE IF NOT EXISTS `Użytkownicy a Grupy`(`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 	`id_Użytkownicy` INT, `id_Grupy` INT, FOREIGN KEY(`id_Użytkownicy`) REFERENCES Persons(``), FOREIGN KEY(`id_Grupy`) REFERENCES Persons(``));

CREATE TABLE IF NOT EXISTS `Grupy`				(`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 	`nazwa` TEXT, `id_chaty` INT, FOREIGN KEY(`id_chaty`) REFERENCES Persons(``));
CREATE TABLE IF NOT EXISTS `Grupy a Uprawnienia`(`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 	`id_Grupy` INT, `id_Uprawnienia` INT, FOREIGN KEY(`id_Grupy`) REFERENCES Persons(``), FOREIGN KEY(`id_Uprawnienia`) REFERENCES Persons(``));
CREATE TABLE IF NOT EXISTS `Uprawnienia`		(`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 	`nazwa`);

CREATE TABLE IF NOT EXISTS `Chaty`				(`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 	`nazwa` TEXT, `hasło` VARCHAR(32), `id_Użytkownicy` INT, `loginFTPD` TEXT, `hasłoFTPD` TEXT, `loginFTPU` TEXT, `hasłoFTPU` TEXT, `czas wiadomości` INT, FOREIGN KEY(`id_Użytkownicy`) REFERENCES Persons(``));
CREATE TABLE IF NOT EXISTS `Wiadomości`			(`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 	`treść` TEXT, `data` DATA, `id_Chaty` INT, `id_Użytkownicy` INT, FOREIGN KEY(`id_Chaty`) REFERENCES Persons(``), FOREIGN KEY(`id_Użytkownicy`) REFERENCES Persons(``));
CREATE TABLE IF NOT EXISTS `Historia wiadomośći`(`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 	`id_Wiadomości` INT, `treść` TEXT, `data` DATA, FOREIGN KEY(`id_Wiadomości`) REFERENCES Persons(``));
CREATE TABLE IF NOT EXISTS `Kary`				(`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 	`data` DATA, `id_Użytkownicy` INT, `przez` INT, FOREIGN KEY(`id_Użytkownicy`) REFERENCES Persons(``));
