use KarmieniaZwierzat;
insert into Skladniki (nazwa) 
	values ('Gruszki');
insert into Skladniki (nazwa) 
	values ('Wołowina');
insert into Skladniki (nazwa)
	 values ('Mrówki');
insert into Skladniki (nazwa)
	 values ('Banan');
insert into Skladniki (nazwa)
	 values ('Siano');
insert into Skladniki (nazwa)
	 values ('Baranina');
insert into Skladniki (nazwa)
	 values ('Kokos');
insert into Skladniki (nazwa)
	 values ('Gęsi');
insert into Skladniki (nazwa)	
	values ('Dorsz');
insert into Skladniki (nazwa) 
	values ('Sandacz');
insert into Skladniki (nazwa)
	 values ('Liście Bambusa');
insert into Skladniki (nazwa) 
	values ('Leki');
insert into Skladniki (nazwa) 
	values ('Jagody');
insert into Skladniki (nazwa) 
	values ('Cytrusy');
insert into Skladniki (nazwa) 
	values ('Nektarynki');
insert into Skladniki (nazwa) 
	values ('Jaszczurki');
insert into Skladniki (nazwa) 
	values ('Padlina');
insert into Skladniki (nazwa) 
	values ('Witaminy');
insert into Skladniki (nazwa) 
	values ('Mix zieleniny');

insert into Posilki (godzina , ID_Diety) values ('12:00:12' , '1');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Jaszczurki' ,' 0.5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Wołowina' ,' 0.5');

insert into Posilki (godzina , ID_Diety) values ('10:00:00' , '2');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Cytrusy' ,' 3');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Nektarynki' ,' 4');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Liście Bambusa' ,' 6');


insert into Posilki (godzina , ID_Diety) values ('18:30:12' , '2');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Cytrusy' ,' 5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Nektarynki' ,'8');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Liście Bambusa' ,' 6');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Banan' ,' 4');


insert into Posilki (godzina , ID_Diety) values ('12:00:12' , '3');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Cytrusy' ,' 0.5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Nektarynki' ,'2');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Banan' ,' 1');


insert into Posilki (godzina , ID_Diety) values ('12:00:12' , '3');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Cytrusy' ,' 1.5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Nektarynki' ,'1');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Banan' ,' .5');

insert into Posilki (godzina , ID_Diety) values ('13:45:12' , '4');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values ('6' ,'Wołowina' ,'6');

insert into Posilki (godzina , ID_Diety) values ('13:00:00' , '5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Jagody' ,' 1');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Liście Bambusa' ,' 2');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Nektarynki' ,' .5');



insert into Posilki (godzina , ID_Diety) values ('18:00:12' , '5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Jagody' ,' .5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Liście Bambusa' ,' 1');



insert into Posilki (godzina , ID_Diety) values ('12:00:12' , '6');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Liście Bambusa' ,' 3');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Siano' ,' 3');

insert into Posilki (godzina , ID_Diety) values ('12:00:12' , '7');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Padlina' ,' 3');

---------------------\



insert into ZlecenieDiety(autoryzowal , dieta , od , do , numer , gatunek) values ('25' ,'8' ,'2019/04/11','2019/04/20','001' , 'Lew');
insert into Posilki (godzina , ID_Diety) values ('13:45:12' , '8');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Wołowina' ,'6');
insert into Posilki (godzina , ID_Diety) values ('13:45:12' , '8');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Witaminy' ,'.25');
insert into ZlecenieDiety(autoryzowal , dieta , od , do , numer , gatunek) values ('1' ,'9' ,'2019/04/11','2019/04/20','002' , 'Lew');
insert into Posilki (godzina , ID_Diety) values ('13:45:12' , '9');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Wołowina' ,'4');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Leki' ,'.25');

insert into ZlecenieDiety(autoryzowal , dieta , od , do , numer , gatunek) values ('1' ,'10' ,'2019/04/11','2019/05/25','001' , 'Panda Mała');
insert into Posilki (godzina , ID_Diety) values ('13:00:00' , '10');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Jagody' ,' 1');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Liście Bambusa' ,' 2');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Nektarynki' ,' .5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Witaminy' ,'.25');


insert into Posilki (godzina , ID_Diety) values ('18:00:12' , '10');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Jagody' ,' .5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Liście Bambusa' ,' 1');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Witaminy' ,'.25');

insert into Posilki (godzina , ID_Diety) values ('08:00:12' , '10');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Jagody' ,' .5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Cytrusy' ,' 1');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Witaminy' ,'.25');


insert into ZlecenieDiety(autoryzowal , dieta , od , do , numer , gatunek) values ('1' ,'11' ,'2019/04/19','2019/05/29','002' , 'Panda Mała');
insert into Posilki (godzina , ID_Diety) values ('13:00:00' , '11');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Jagody' ,' 1');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Liście Bambusa' ,' 2');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Nektarynki' ,' .5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Leki' ,'.25');


insert into Posilki (godzina , ID_Diety) values ('18:00:12' , '11');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Jagody' ,' .5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Liście Bambusa' ,' 1');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Witaminy' ,'.25');

insert into Posilki (godzina , ID_Diety) values ('08:00:12' , '11');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Jagody' ,' .5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Cytrusy' ,' 1');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Leki' ,'.25');

insert into ZlecenieDiety(autoryzowal , dieta , od , do , numer , gatunek) values ('1' ,'12' ,'2019/03/11','2019/06/19','001' , 'Pantera Perska');
insert into Posilki (godzina , ID_Diety) values ('13:45:12' , '12');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Wołowina' ,'3');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Leki' ,'.25');

insert into ZlecenieDiety(autoryzowal , dieta , od , do , numer , gatunek) values ('1' ,'13' ,'2019/03/11','2019/06/11','001' , 'Surogatka');

insert into Posilki (godzina , ID_Diety) values ('08:00:12' , '13');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Cytrusy' ,' 0.5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Nektarynki' ,'2');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Witaminy' ,'.25');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Banan' ,' 1');

insert into Posilki (godzina , ID_Diety) values ('14:00:12' , '13');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Cytrusy' ,' 1.5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Nektarynki' ,'1');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Banan' ,' .5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Leki' ,'.25');


insert into Posilki (godzina , ID_Diety) values ('18:00:12' , '13');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Cytrusy' ,' 1.5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Nektarynki' ,'1');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Leki' ,'.25');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Banan' ,' .5');

insert into ZlecenieDiety(autoryzowal , dieta , od , do , numer , gatunek) values ('1' ,'14' ,'2019/03/11','2019/03/15','001' , 'Fennek');
insert into Posilki (godzina , ID_Diety) values ('12:00:12' , '14');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Jaszczurki' ,' 0.5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Wołowina' ,' 0.5');

insert into Posilki (godzina , ID_Diety) values ('18:00:12' , '14');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Leki' ,'.25');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Witaminy' ,'.25');
insert into ZlecenieDiety(autoryzowal , dieta , od , do , numer , gatunek) values ('1' ,'15' ,'2019/02/11','2019/02/25','002' , 'Fennek');
insert into Posilki (godzina , ID_Diety) values ('12:00:12' , '15');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Jaszczurki' ,' 0.5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Wołowina' ,' 0.75');

insert into Posilki (godzina , ID_Diety) values ('18:00:12' , '15');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Leki' ,'.25');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Witaminy' ,'.30');

insert into ZlecenieDiety(autoryzowal , dieta , od , do , numer , gatunek) values ('1' ,'16' ,'2018/12/11','2019/02/25','002' , 'Ryś');
insert into Posilki (godzina , ID_Diety) values ('12:00:12' , '16');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Jaszczurki' ,' 0.5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Wołowina' ,' 0.75');

insert into Posilki (godzina , ID_Diety) values ('18:00:12' , '16');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Leki' ,'.25');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Witaminy' ,'.30');

insert into ZlecenieDiety(autoryzowal , dieta , od , do , numer , gatunek) values ('1' ,'17' ,'2019/02/25','2019/03/25','002' , 'Ryś');
insert into Posilki (godzina , ID_Diety) values ('12:00:12' , '16');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Jaszczurki' ,' 0.5');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Wołowina' ,' 0.75');

insert into Posilki (godzina , ID_Diety) values ('18:00:12' , '16');
insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Witaminy' ,'.30');


--insert into Posilki (godzina , ID_Diety) values ('12:00:12' , '3');
--select * from Posilki where Numer = IDENT_CURRENT('Posilki');
--insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Cytrusy' ,' 1.5');
--insert into Sklady_Posilkow (posilek , nazwa , ilosc) values (IDENT_CURRENT('Posilki') ,'Nektarynki' ,' 1.5');
--select * from Sklady_Posilkow where posilek = IDENT_CURRENT('Posilki');

--delete from Posilki where Numer = IDENT_CURRENT('Posilki');
--select * from Posilki where Numer = IDENT_CURRENT('Posilki');
--select * from Sklady_Posilkow where posilek = IDENT_CURRENT('Posilki');
Update ZlecenieDiety 
	set uzasadnienie = 'ciąża Zwierzęcia' 
		where 
			dieta = '10';
Update ZlecenieDiety 
	set uzasadnienie = 'ciąża Zwierzęcia' 
		where 
			dieta = '8';
Update ZlecenieDiety 
	set uzasadnienie = 'ciąża Zwierzęcia' 
		where 
			dieta = '15';
Update ZlecenieDiety 
	set uzasadnienie = 'ciąża Zwierzęcia' 
		where 
			dieta = '16';

