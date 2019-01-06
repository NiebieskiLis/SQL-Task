use KarmieniaZwierzat;
CREATE TABLE Diety(
  ID_Diety int identity(1,1) PRIMARY KEY,
  czestotliwosc float
);
CREATE TABLE Gatunki(
  Nazwa_Gatunku varchar(50) PRIMARY KEY,
  iloscZwierzat int,
  dieta int REFERENCES Diety
);
create table Boksy (
 nazwa varchar (20) PRIMARY KEY,
 koordynatX float,
 koordynatY  float
);
create table Zwierzeta (
 numer int,
 nazwa varchar(50) REFERENCES Gatunki,
 waga float , 
 wiek float,
 PRIMARY KEY(numer , nazwa)
);
create Table Skladniki (
 nazwa varchar (20) PRIMARY KEY
);
create Table Pracownicy (
 imie varchar (20),
 nazwisko varchar (30),
 ID_Pracownika int identity(1,1) PRIMARY KEY 
);
create Table Weterynarze (
 ID_Pracownika int REFERENCES Pracownicy PRIMARY KEY,
 specjalizacja varchar (100)
)
create Table Posilki (
 godzina time,
 Numer int identity(1,1) PRIMARY KEY, 
 ID_Diety int REFERENCES  Diety 

);
create Table Sklady_Posilkow (
 posilek int  REFERENCES  Posilki  ON DELETE CASCADE, 
 nazwa varchar (20) REFERENCES  Skladniki, 
 PRIMARY KEY(posilek , nazwa)
);
create Table Karmienia (
 ID int identity(1,1) PRIMARY KEY,
 Pracownik int  REFERENCES  Pracownicy, 
 posilek int REFERENCES  Posilki, 
 godzina time,
 dzien date
);
create Table ZlecenieDiety (
 ID int identity(1,1) PRIMARY KEY,
 autoryzowal int  REFERENCES  Weterynarze, 
 dieta int REFERENCES  Diety on delete cascade, 
 od date,
 do date,
 uzasadnienie varchar(200)
);
create Table KarmieniaZwierzat (
 ID int identity(1,1) PRIMARY KEY,
 Karmienie int  REFERENCES  Karmienia
);
create Table KarmieniaBoksow (
 ID int identity(1,1) PRIMARY KEY,
 Karmienie int  REFERENCES  Karmienia, 
 Boks varchar (20) REFERENCES  Boksy
);

create Table ModyfikacjePosilkow (
 ID int identity(1,1) PRIMARY KEY,
 Karmienie int  REFERENCES  Karmienia, 
 Skladnik varchar (20)  REFERENCES  Skladniki,
 ilosc float,
 Uzasadnienie varchar (300) 
);
----------------------------

Alter Table Gatunki
  add Zamieszkanie varchar (20) REFERENCES Boksy

Alter Table Diety
  add  NazwaDiety varchar (50)

ALTER TABLE ZlecenieDiety ADD
 numer int,
 gatunek varchar(50)

ALTER TABLE ZlecenieDiety ADD FOREIGN KEY(numer , gatunek)
  REFERENCES dbo.Zwierzeta(numer , nazwa)

ALTER TABLE KarmieniaZwierzat ADD
 numer int,
 gatunek varchar(50)

ALTER TABLE KarmieniaZwierzat ADD FOREIGN KEY(numer , gatunek)
  REFERENCES dbo.Zwierzeta(numer , nazwa)

ALTER TABLE Sklady_Posilkow add ilosc float

ALTER TABLE Weterynarze
	ADD CONSTRAINT Dane CHECK (specjalizacja != 'Brak');
ALTER TABLE Gatunki
	ADD CONSTRAINT iloscZwierzat CHECK (iloscZwierzat != 0);
ALTER TABLE Diety
	ADD CONSTRAINT Ilosc CHECK (czestotliwosc <= 5);	
