DROP SCHEMA IF EXISTS anciens;
CREATE SCHEMA anciens;

DROP TABLE IF EXISTS anciens.User;
CREATE TABLE anciens.User
(
    `IDnum` INT AUTO_INCREMENT NOT NULL,
    `Promo` INT NOT NULL,
    `Annee Sortie` INT,
    `Class Sortie` VARCHAR(20),
    `Nb d'annee` INT,
    `Date derniere mise a jour` Date,
    `Prenom` VARCHAR(60) NOT NULL,
    `Nom du Pere` VARCHAR(60),
    `Nom de Famille` VARCHAR(60) NOT NULL,
    `Sexe` ENUM('Male','Female','Non-Binary','Prefer Not To Say') NOT NULL,
    `Date de Naissance` Date NOT NULL,
    `Decede` BIT NOT NULL,
    `Ancien` BIT NOT NULL,
    `Contact_ID` INT NOT NULL,
    `Enfant_ID` INT NOT NULL,
    `Donor_ID` INT NOT NULL,

    PRIMARY KEY(`IDnum`),
    FOREIGN KEY(`Contact_ID`) REFERENCES Contact (`Contact_ID`),
    FOREIGN KEY(`Enfant_ID`) REFERENCES Enfant (`Enfant_ID`),
    FOREIGN KEY(`Donor_ID`) REFERENCES Donor (`Donor_ID`)
);

INSERT INTO `user`
(`IDnum`, `Promo`, `Annee Sortie`, `Class Sortie`, `Nb d'annee`, `Date derniere mise a jour`, `Prenom`, `Nom du Pere`, `Nom de Famille`, `Sexe`, `Date de Naissance`, `Decede`, `Ancien`, `Contact_ID`, `Enfant_ID`, `Donor_ID`) 
VALUES 
(1,2019,2019,'Terminale',15,'0000-00-00','Rayan','Bassam','Hassan','Male','2001-05-05',1,0,1,1,1)