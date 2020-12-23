CREATE TABLE `Klasa` (
  `Id_klasy` INT NOT NULL AUTO_INCREMENT,
  `Nazwa` VARCHAR(30) NOT NULL,
  `Rok_szkolny` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id_klasy`))
ENGINE = InnoDB;

INSERT INTO `Klasa` (`Id_klasy`, `Nazwa`, `Rok_szkolny`) VALUES (DEFAULT, 'klasa_jezyk_angielski', '2019/2020');
INSERT INTO `Klasa` (`Id_klasy`, `Nazwa`, `Rok_szkolny`) VALUES (DEFAULT, 'klasa_jezyk_niemiecki', '2019/2020');
INSERT INTO `Klasa` (`Id_klasy`, `Nazwa`, `Rok_szkolny`) VALUES (DEFAULT, 'klasa_jezyk_polski', '2019/2020');
INSERT INTO `Klasa` (`Id_klasy`, `Nazwa`, `Rok_szkolny`) VALUES (DEFAULT, 'klasa_jezyk_francuski', '2019/2020');
INSERT INTO `Klasa` (`Id_klasy`, `Nazwa`, `Rok_szkolny`) VALUES (DEFAULT, 'klasa_jezyk_hiszpanski', '2019/2020');

CREATE TABLE `Uczen` (
  `Id_ucznia` INT NOT NULL AUTO_INCREMENT,
  `Imie` VARCHAR(25) NOT NULL,
  `Nazwisko` VARCHAR(25) NOT NULL,
  `Adres_zamieszkania` VARCHAR(50) NOT NULL,
  `Data_urodzenia` DATE NOT NULL,
  `Plec` VARCHAR(15) NOT NULL,
  `Klasa_Id_klasy` INT NOT NULL,
  PRIMARY KEY (`Id_ucznia`),
  INDEX `fk_Uczen_Klasa_idx` (`Klasa_Id_klasy` ASC),
  CONSTRAINT `fk_Uczen_Klasa`
    FOREIGN KEY (`Klasa_Id_klasy`)
    REFERENCES `Klasa` (`Id_klasy`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Bolesław ', 'Malinowski', 'Polna 20', '2002-03-05', 'mezczyzna', 4);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Marcel ', 'Dąbrowski', 'Lesna 82', '2002-05-06', 'mezczyzna', 2);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Maciej ', 'Błaszczyk', 'Sloneczna 21', '2005-06-22', 'mezczyzna', 5);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Emil ', 'Wysocki', 'Brzozowa 23', '2004-07-28', 'mezczyzna', 5);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Damian ', 'Maciejewski', 'Ogrodowa 5', '2002-03-07', 'mezczyzna', 2);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Gracjan ', 'Chmielewski', 'Sosnowa 34', '2003-08-12', 'mezczyzna', 4);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Bolesław ', 'Zawadzki', 'Zielona 18', '2003-07-23', 'mezczyzna', 2);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Remigiusz ', 'Szulc', 'Akacjowa 14', '2005-09-19', 'mezczyzna', 1);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Jarosław ', 'Makowski', 'Parkowa 54', '2005-09-13', 'mezczyzna', 5);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Łukasz ', 'Kowalski', 'Kwiatowa 12', '2005-04-12', 'mezczyzna', 3);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Kornel ', 'Pietrzak', 'Kolejowa 75', '2002-05-17', 'mezczyzna', 4);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Kamil ', 'Wójcik', 'Krotka 4', '2002-02-12', 'mezczyzna', 1);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Adrian ', 'Andrzejewski', 'Miejska 92', '2004-07-16', 'mezczyzna', 3);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Kacper ', 'Kaźmierczak', 'Okretowa 54', '2005-10-06', 'mezczyzna', 5);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Olaf ', 'Marciniak', 'Olawska 46', '2002-02-01', 'mezczyzna', 2);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Bartłomiej ', 'Lewandowski', 'Okoliczna 45', '2003-01-01', 'mezczyzna', 4);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Grzegorz ', 'Sawicki', 'Akantu 38', '2004-08-11', 'mezczyzna', 2);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Daniel ', 'Włodarczyk', 'Waleriana Czumy 52', '2004-10-29', 'mezczyzna', 5);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Konrad ', 'Kozłowski', 'Tkaczy 65', '2005-05-13', 'mezczyzna', 1);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Dawid ', 'Jakubowski', 'Cieplarniana 31', '2005-05-18', 'mezczyzna', 3);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Piotr ', 'Kalinowski', 'Brygadzistow 60', '2004-02-23', 'mezczyzna', 5);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Arkadiusz ', 'Cieślak', 'Elektry 98', '2005-09-20', 'mezczyzna', 1);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Magdalena ', 'Nowak', 'Sternicza 87', '2002-10-17', 'kobieta', 3);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Urszula ', 'Jankowska', 'Dynarska 72', '2002-05-14', 'kobieta', 3);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Blanka ', 'Maciejewska', 'Ksiezycowa 65', '2003-09-22', 'kobieta', 4);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Maria ', 'Mróz', 'Ziebicka 30', '2005-02-07', 'kobieta', 1);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Elwira ', 'Wiśniewska', 'Fabianska 9', '2005-12-26', 'kobieta', 2);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Liliana ', 'Szewczyk', 'Fortuny 88', '2002-12-19', 'kobieta', 3);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Beata ', 'Baranowska', 'Podmiejska 37', '2002-07-12', 'kobieta', 4);
INSERT INTO `Uczen` (`Id_ucznia`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Klasa_Id_klasy`) VALUES (DEFAULT, 'Daria ', 'Dąbrowska', 'Powstancow Slaskich 62', '2002-02-01', 'kobieta', 1);

CREATE TABLE `Nauczyciel` (
  `Id_nauczyciela` INT NOT NULL AUTO_INCREMENT,
  `Imie` VARCHAR(25) NOT NULL,
  `Nazwisko` VARCHAR(25) NOT NULL,
  `Adres_zamieszkania` VARCHAR(50) NOT NULL,
  `Data_urodzenia` DATE NOT NULL,
  `Plec` VARCHAR(15) NOT NULL,
  `Pensja` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id_nauczyciela`))
ENGINE = InnoDB;

INSERT INTO `Nauczyciel` (`Id_nauczyciela`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Pensja`) VALUES (DEFAULT, 'Balbina ', 'Sokołowska', 'Klonowa 12', '1981-05-01', 'kobieta', '3600');
INSERT INTO `Nauczyciel` (`Id_nauczyciela`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Pensja`) VALUES (DEFAULT, 'Wanda ', 'Cieślak', 'Brzozowa 45', '1982-06-14', 'kobieta', '3600');
INSERT INTO `Nauczyciel` (`Id_nauczyciela`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Pensja`) VALUES (DEFAULT, 'Jacek ', 'Jasiński', 'Polna 3', '1982-08-23', 'mezczyzna', '3600');
INSERT INTO `Nauczyciel` (`Id_nauczyciela`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Pensja`) VALUES (DEFAULT, 'Leszek ', 'Kołodziej', 'Armii krajowej 34', '1988-05-04', 'mezczyzna', '3600');
INSERT INTO `Nauczyciel` (`Id_nauczyciela`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Pensja`) VALUES (DEFAULT, 'Edward ', 'Duda', 'Wczasowa 18', '1985-06-11', 'mezczyzna', '3600');

CREATE TABLE `Przedmiot` (
  `Id_przedmiotu` INT NOT NULL AUTO_INCREMENT,
  `Nazwa` VARCHAR(30) NOT NULL,
  `Nauczyciel_Id_nauczyciela` INT NOT NULL,
  PRIMARY KEY (`Id_przedmiotu`),
  INDEX `fk_Przedmiot_Nauczyciel1_idx` (`Nauczyciel_Id_nauczyciela` ASC),
  CONSTRAINT `fk_Przedmiot_Nauczyciel1`
    FOREIGN KEY (`Nauczyciel_Id_nauczyciela`)
    REFERENCES `Nauczyciel` (`Id_nauczyciela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `Przedmiot` (`Id_przedmiotu`, `Nazwa`, `Nauczyciel_Id_nauczyciela`) VALUES (DEFAULT, 'jezyk_angielski', 3);
INSERT INTO `Przedmiot` (`Id_przedmiotu`, `Nazwa`, `Nauczyciel_Id_nauczyciela`) VALUES (DEFAULT, 'jezyk_niemiecki', 2);
INSERT INTO `Przedmiot` (`Id_przedmiotu`, `Nazwa`, `Nauczyciel_Id_nauczyciela`) VALUES (DEFAULT, 'jezyk_polski', 4);
INSERT INTO `Przedmiot` (`Id_przedmiotu`, `Nazwa`, `Nauczyciel_Id_nauczyciela`) VALUES (DEFAULT, 'jezyk_francuski', 1);
INSERT INTO `Przedmiot` (`Id_przedmiotu`, `Nazwa`, `Nauczyciel_Id_nauczyciela`) VALUES (DEFAULT, 'jezyk_hiszpanski', 5);

CREATE TABLE `Oceny` (
  `Id_oceny` INT NOT NULL AUTO_INCREMENT,
  `Ocena` VARCHAR(10) NULL,
  `Data_wystawienia` DATE NULL,
  `Uczen_Id_uczniowie` INT NOT NULL,
  `Przedmiot_Id_przedmiotu` INT NOT NULL,
  PRIMARY KEY (`Id_oceny`, `Uczen_Id_uczniowie`, `Przedmiot_Id_przedmiotu`),
  INDEX `fk_Oceny_Uczen1_idx` (`Uczen_Id_uczniowie` ASC),
  INDEX `fk_Oceny_Przedmiot1_idx` (`Przedmiot_Id_przedmiotu` ASC),
  CONSTRAINT `fk_Oceny_Uczen1`
    FOREIGN KEY (`Uczen_Id_uczniowie`)
    REFERENCES `Uczen` (`Id_ucznia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Oceny_Przedmiot1`
    FOREIGN KEY (`Przedmiot_Id_przedmiotu`)
    REFERENCES `Przedmiot` (`Id_przedmiotu`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `Oceny` (`Id_oceny`, `Ocena`, `Data_wystawienia`, `Uczen_Id_uczniowie`, `Przedmiot_Id_przedmiotu`) VALUES (DEFAULT, '1', '2020-09-20', 8, 1);
INSERT INTO `Oceny` (`Id_oceny`, `Ocena`, `Data_wystawienia`, `Uczen_Id_uczniowie`, `Przedmiot_Id_przedmiotu`) VALUES (DEFAULT, '2', '2020-09-23', 29, 4);
INSERT INTO `Oceny` (`Id_oceny`, `Ocena`, `Data_wystawienia`, `Uczen_Id_uczniowie`, `Przedmiot_Id_przedmiotu`) VALUES (DEFAULT, '3', '2020-09-20', 12, 1);
INSERT INTO `Oceny` (`Id_oceny`, `Ocena`, `Data_wystawienia`, `Uczen_Id_uczniowie`, `Przedmiot_Id_przedmiotu`) VALUES (DEFAULT, '4', '2020-10-15', 4, 5);
INSERT INTO `Oceny` (`Id_oceny`, `Ocena`, `Data_wystawienia`, `Uczen_Id_uczniowie`, `Przedmiot_Id_przedmiotu`) VALUES (DEFAULT, '5', '2020-09-27', 10, 3);
INSERT INTO `Oceny` (`Id_oceny`, `Ocena`, `Data_wystawienia`, `Uczen_Id_uczniowie`, `Przedmiot_Id_przedmiotu`) VALUES (DEFAULT, '6', '2020-10-08', 15, 2);

CREATE TABLE `Obsluga` (
  `Id_obsługi` INT NOT NULL AUTO_INCREMENT,
  `Imie` VARCHAR(25) NOT NULL,
  `Nazwisko` VARCHAR(25) NOT NULL,
  `Adres_zamieszkania` VARCHAR(50) NOT NULL,
  `Data_urodzenia` DATE NOT NULL,
  `Plec` VARCHAR(15) NOT NULL,
  `Stanowisko` VARCHAR(30) NOT NULL,
  `Pensja` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id_obsługi`))
ENGINE = InnoDB;

INSERT INTO `Obsluga` (`Id_obsługi`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Stanowisko`, `Pensja`) VALUES (DEFAULT, 'Jakub', 'Mazur', 'Paśnikowa 107', '1978-01-03', 'mezczyzna', 'kucharz', '3000');
INSERT INTO `Obsluga` (`Id_obsługi`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Stanowisko`, `Pensja`) VALUES (DEFAULT, 'Alan', 'Kwiatkowski', 'Saska 45', '1975-07-03', 'mezczyzna', 'wozny', '2400');
INSERT INTO `Obsluga` (`Id_obsługi`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Stanowisko`, `Pensja`) VALUES (DEFAULT, 'Beata', 'Andrzejewska', 'Dzierżawna 92', '1978-11-16', 'kobieta', 'sprzataczka', '2500');
INSERT INTO `Obsluga` (`Id_obsługi`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Stanowisko`, `Pensja`) VALUES (DEFAULT, 'Dominik', 'Kaźmierczak', 'Zamiejska 37', '1976-08-13', 'mezczyzna', 'konserwator', '2900');

CREATE TABLE `Dyrekcja` (
  `Id_dyrekcji` INT NOT NULL AUTO_INCREMENT,
  `Imie` VARCHAR(25) NOT NULL,
  `Nazwisko` VARCHAR(25) NOT NULL,
  `Adres_zamieszkania` VARCHAR(50) NOT NULL,
  `Data_urodzenia` DATE NOT NULL,
  `Plec` VARCHAR(15) NOT NULL,
  `Stanowisko` VARCHAR(30) NOT NULL,
  `Pensja` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id_dyrekcji`))
ENGINE = InnoDB;

INSERT INTO `Dyrekcja` (`Id_dyrekcji`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Stanowisko`, `Pensja`) VALUES (DEFAULT, 'Katarzyna', 'Makowska', 'Mokronoska 61', '1978-03-20', 'kobieta', 'księgowa', '3200');
INSERT INTO `Dyrekcja` (`Id_dyrekcji`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Stanowisko`, `Pensja`) VALUES (DEFAULT, 'Marcin ', 'Kaczmarczyk', 'Słoneczna 91', '1976-01-30', 'mezczyzna', 'dyrektor', '6000');
INSERT INTO `Dyrekcja` (`Id_dyrekcji`, `Imie`, `Nazwisko`, `Adres_zamieszkania`, `Data_urodzenia`, `Plec`, `Stanowisko`, `Pensja`) VALUES (DEFAULT, 'Heronim ', 'Zieliński', 'Rzodkiewki 15', '1975-05-20', 'mezczyzna', 'wicedyrektor', '4500');

CREATE TABLE `Pracownik` (
  `Id_pracownika` INT NOT NULL AUTO_INCREMENT,
  `Data_zatrudnienia` DATE NOT NULL,
  `Dyrekcja_Id_dyrekcji` INT NULL,
  `Nauczyciel_Id_nauczyciela` INT NULL,
  `Obsługa_Id_obsługi` INT NULL,
  PRIMARY KEY (`Id_pracownika`),
  INDEX `fk_Pracownik_Dyrekcja1_idx` (`Dyrekcja_Id_dyrekcji` ASC),
  INDEX `fk_Pracownik_Nauczyciel1_idx` (`Nauczyciel_Id_nauczyciela` ASC),
  INDEX `fk_Pracownik_Obsługa1_idx` (`Obsługa_Id_obsługi` ASC),
  CONSTRAINT `fk_Pracownik_Dyrekcja1`
    FOREIGN KEY (`Dyrekcja_Id_dyrekcji`)
    REFERENCES `Dyrekcja` (`Id_dyrekcji`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pracownik_Nauczyciel1`
    FOREIGN KEY (`Nauczyciel_Id_nauczyciela`)
    REFERENCES `Nauczyciel` (`Id_nauczyciela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pracownik_Obsługa1`
    FOREIGN KEY (`Obsługa_Id_obsługi`)
    REFERENCES `Obsluga` (`Id_obsługi`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `Pracownik` (`Id_pracownika`, `Data_zatrudnienia`, `Dyrekcja_Id_dyrekcji`, `Nauczyciel_Id_nauczyciela`, `Obsługa_Id_obsługi`) VALUES (DEFAULT, '2020-06-07', 1, NULL, NULL);
INSERT INTO `Pracownik` (`Id_pracownika`, `Data_zatrudnienia`, `Dyrekcja_Id_dyrekcji`, `Nauczyciel_Id_nauczyciela`, `Obsługa_Id_obsługi`) VALUES (DEFAULT, '2020-01-09', NULL, 4, NULL);
INSERT INTO `Pracownik` (`Id_pracownika`, `Data_zatrudnienia`, `Dyrekcja_Id_dyrekcji`, `Nauczyciel_Id_nauczyciela`, `Obsługa_Id_obsługi`) VALUES (DEFAULT, '2020-08-20', NULL, NULL, 3);
INSERT INTO `Pracownik` (`Id_pracownika`, `Data_zatrudnienia`, `Dyrekcja_Id_dyrekcji`, `Nauczyciel_Id_nauczyciela`, `Obsługa_Id_obsługi`) VALUES (DEFAULT, '2020-07-08', NULL, NULL, 2);
INSERT INTO `Pracownik` (`Id_pracownika`, `Data_zatrudnienia`, `Dyrekcja_Id_dyrekcji`, `Nauczyciel_Id_nauczyciela`, `Obsługa_Id_obsługi`) VALUES (DEFAULT, '2020-03-08', 3, NULL, NULL);
INSERT INTO `Pracownik` (`Id_pracownika`, `Data_zatrudnienia`, `Dyrekcja_Id_dyrekcji`, `Nauczyciel_Id_nauczyciela`, `Obsługa_Id_obsługi`) VALUES (DEFAULT, '2020-04-09', NULL, 1, NULL);
INSERT INTO `Pracownik` (`Id_pracownika`, `Data_zatrudnienia`, `Dyrekcja_Id_dyrekcji`, `Nauczyciel_Id_nauczyciela`, `Obsługa_Id_obsługi`) VALUES (DEFAULT, '2020-01-12', NULL, 3, NULL);
INSERT INTO `Pracownik` (`Id_pracownika`, `Data_zatrudnienia`, `Dyrekcja_Id_dyrekcji`, `Nauczyciel_Id_nauczyciela`, `Obsługa_Id_obsługi`) VALUES (DEFAULT, '2020-01-07', 2, NULL, NULL);
INSERT INTO `Pracownik` (`Id_pracownika`, `Data_zatrudnienia`, `Dyrekcja_Id_dyrekcji`, `Nauczyciel_Id_nauczyciela`, `Obsługa_Id_obsługi`) VALUES (DEFAULT, '2020-01-09', NULL, 2, NULL);
INSERT INTO `Pracownik` (`Id_pracownika`, `Data_zatrudnienia`, `Dyrekcja_Id_dyrekcji`, `Nauczyciel_Id_nauczyciela`, `Obsługa_Id_obsługi`) VALUES (DEFAULT, '2020-09-15', NULL, NULL, 1);
INSERT INTO `Pracownik` (`Id_pracownika`, `Data_zatrudnienia`, `Dyrekcja_Id_dyrekcji`, `Nauczyciel_Id_nauczyciela`, `Obsługa_Id_obsługi`) VALUES (DEFAULT, '2020-04-06', NULL, 5, NULL);
INSERT INTO `Pracownik` (`Id_pracownika`, `Data_zatrudnienia`, `Dyrekcja_Id_dyrekcji`, `Nauczyciel_Id_nauczyciela`, `Obsługa_Id_obsługi`) VALUES (DEFAULT, '2020-05-27', NULL, NULL, 4);

DELIMITER //
CREATE TRIGGER `Nauczyciel_BEFORE_INSERT` 
BEFORE INSERT ON `Nauczyciel` 
FOR EACH ROW
BEGIN
IF NEW.Pensja > 3600 
THEN
SET NEW.Pensja = 3600;
END IF;
END
//
DELIMITER ;

DELIMITER $$
CREATE TRIGGER `Oceny_BEFORE_INSERT` 
BEFORE INSERT ON `Oceny` 
FOR EACH ROW
BEGIN
IF NEW.Ocena <= 0 
THEN
SET NEW.Ocena = 1;
END IF;
END
$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`rusiakf`@`localhost` PROCEDURE `Podwyzka`(liczba INTEGER)
BEGIN
DECLARE liczba INTEGER;
UPDATE Dyrekcja, Obsluga
SET Pensja = Pensja + liczba;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`rusiakf`@`localhost` FUNCTION `liczba_uczniow`() RETURNS INT
BEGIN
DECLARE Ilu_Uczniow INT;
SELECT COUNT(*) INTO @Ilu_uczniow from Uczen;
RETURN @Ilu_uczniow;
END$$
DELIMITER ;

