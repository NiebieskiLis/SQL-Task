--BOKSY
use KarmieniaZwierzat;
INSERT INTO Boksy (nazwa , koordynatX , koordynatY)
	VALUES ('AB001',52.12 ,50.16);
INSERT INTO Boksy (nazwa , koordynatX , koordynatY)
	VALUES ('AB002',52.10 ,50.13);
INSERT INTO Boksy (nazwa , koordynatX , koordynatY)
	VALUES ('AB003',52.11 ,50.14);
INSERT INTO Boksy (nazwa , koordynatX , koordynatY)
	VALUES ('AB004',52.11 ,50.17);
INSERT INTO Boksy (nazwa , koordynatX , koordynatY)
	VALUES ('AB005',52.12 ,50.13);
INSERT INTO Boksy (nazwa , koordynatX , koordynatY)
	VALUES ('AB006',52.11 ,50.15);
INSERT INTO Boksy (nazwa , koordynatX , koordynatY)
	VALUES ('AB007',52.12 ,50.16);
INSERT INTO Boksy (nazwa , koordynatX , koordynatY)
	VALUES ('AB008',52.15 ,50.13);
INSERT INTO Boksy (nazwa , koordynatX , koordynatY)
	VALUES ('AB009',52.11 ,50.13);
INSERT INTO Boksy (nazwa , koordynatX , koordynatY)
	VALUES ('AB010',52.16 ,50.13);


	-------------------Diety Gatunki Przedstawiciele
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (1, 'Lisia');
INSERT INTO Gatunki(Nazwa_Gatunku , iloscZwierzat , dieta , Zamieszkanie)
	VALUES ('Fennek' , 2 ,IDENT_CURRENT( 'Diety' ) ,  'AB001'  );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 001 , 'Fennek' , 1 ,2  );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 002 , 'Fennek' , 1 ,  1);
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 003 , 'Fennek' , 1.3 ,  1);
Update Gatunki 
	set iloscZwierzat = '3' 
	where Nazwa_Gatunku = 'Fennek';
	----------------
INSERT INTO Gatunki(Nazwa_Gatunku , iloscZwierzat , dieta , Zamieszkanie)
	VALUES ('Ryœ' , 1 ,IDENT_CURRENT( 'Diety' ) ,  'AB002'  );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 001 , 'Ryœ' , 2.5 ,3  );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 002 , 'Ryœ' , 3 ,2  );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 003 , 'Ryœ' , 0.5 ,0.3  );
	Update Gatunki 
	set iloscZwierzat = '3' 
	where Nazwa_Gatunku = 'Ryœ';

-----------------
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (2, 'Ma³pia');
INSERT INTO Gatunki(Nazwa_Gatunku , iloscZwierzat , dieta , Zamieszkanie)
	VALUES ('Gereza' , 1 ,IDENT_CURRENT( 'Diety' ) ,  'AB003'  );
INSERT INTO Gatunki(Nazwa_Gatunku , iloscZwierzat , dieta , Zamieszkanie)
	VALUES ('Szympans' , 1 ,IDENT_CURRENT( 'Diety' ) ,  'AB003'  );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 001 , 'Gereza' , 5 , 10 );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 002 , 'Gereza' , 5 , 10 );
Update Gatunki 
	set iloscZwierzat = '2' 
	where Nazwa_Gatunku = 'Gereza';
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 001 , 'Szympans' , 8 , 9 );
	
-----------------
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (2, 'Surogacia');
INSERT INTO Gatunki(Nazwa_Gatunku , iloscZwierzat , dieta , Zamieszkanie)
	VALUES ('Surogatka' , 2 ,IDENT_CURRENT( 'Diety' ) ,  'AB004'  );

INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 001 , 'Surogatka' , 0.1 , 2 );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 002 , 'Surogatka' , 0.2 , 1 );
Update Gatunki 
	set iloscZwierzat = '2' 
	where Nazwa_Gatunku = 'Surogatka';
-------------------
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (0.5 , 'Drapieznika');
INSERT INTO Gatunki(Nazwa_Gatunku , iloscZwierzat , dieta , Zamieszkanie)
	VALUES ('Lew' , 1 ,IDENT_CURRENT( 'Diety' ) ,  'AB005'  );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 001 , 'Lew' ,15 , 2 );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 002 , 'Lew' ,12 , 1 );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 003 , 'Lew' ,15 , 2 );
Update Gatunki 
	set iloscZwierzat = '3' 
	where Nazwa_Gatunku = 'Lew';
-------------------

INSERT INTO Gatunki(Nazwa_Gatunku , iloscZwierzat , dieta , Zamieszkanie)
	VALUES ('Pantera Perska' , 1 ,IDENT_CURRENT( 'Diety' ) ,  'AB006'  );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 001 , 'Pantera Perska' ,15 , 2 );
	-------------------
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (2 , 'Panda Ma³a');
INSERT INTO Gatunki(Nazwa_Gatunku , iloscZwierzat , dieta , Zamieszkanie)
	VALUES ('Panda Ma³a' , 1 ,IDENT_CURRENT( 'Diety' ) ,  'AB007'  );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 001 , 'Panda Ma³a' ,5 , 1.5 );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 002 , 'Panda Ma³a' ,4.5 , 2 );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 003 , 'Panda Ma³a' ,3.5 , .5 );
Update Gatunki 
	set iloscZwierzat = '3' 
	where Nazwa_Gatunku = 'Panda Ma³a';

-------------------
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (1 , 'Zebra');
INSERT INTO Gatunki(Nazwa_Gatunku , iloscZwierzat , dieta , Zamieszkanie)
	VALUES ('Zebra' , 1 ,IDENT_CURRENT( 'Diety' ) ,  'AB008'  );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 001 , 'Zebra' ,45 , 1.5 );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 002 , 'Zebra' ,45 , 1.5 );
Update Gatunki 
	set iloscZwierzat = '2' 
	where Nazwa_Gatunku = 'Zebra';
----------------------------------------
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (1 , 'Wilk Grzywiasty');
INSERT INTO Gatunki(Nazwa_Gatunku , iloscZwierzat , dieta , Zamieszkanie)
	VALUES ('Wilk Grzywiasty' , 1 ,IDENT_CURRENT( 'Diety' ) ,  'AB009'  );
INSERT INTO Zwierzeta(numer , nazwa , waga , wiek)
	VALUES ( 001 , 'Wilk Grzywiasty' ,15 , .5 );

--Diety po modyfikacji
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (1 , 'Lwia cia¿a');
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (1 , 'Lwie M³ode');
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (3 , 'Panda Ma³a ci¹¿a');
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (3 , 'Panda Ma³a katar');
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (1.5, 'Pantera Perska - katar ');
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (3, 'Surogatka - Choroba jakastam');
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (2 , 'Fennek - Lecznica');
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (2 , 'Fenek ci¹¿a');
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (2 , 'Ryœ ci¹¿a ');
INSERT INTO Diety (czestotliwosc , NazwaDiety)
	VALUES (2 , 'Ryœ ma m³ode');
		--select * from Gatunki
	--select * from Zwierzeta
	--select * from Boksy
	--select * from Diety
--Update 

