use KarmieniaZwierzat;
--drop view Ilosci;
--1)Pokazuje pracownik�w kt�rzy wydali wiecej posi�k�w ni� �rednia
create view Ilosci as
	select Count(*) AS [ilosc wydanych posilkow] , Pracownicy.imie ,Pracownicy.nazwisko from 
   Karmienia, Pracownicy WHERE Pracownicy.ID_Pracownika =Karmienia.Pracownik 
   group by Pracownik,Pracownicy.imie ,Pracownicy.nazwisko;

select * from Ilosci
	where [ilosc wydanych posilkow] > (select avg (Ilosci.[ilosc wydanych posilkow]) from Ilosci)
	order by [ilosc wydanych posilkow] DESC;

--2)Wy�wietla Wszystkie Zwierz�ta kt�re wa�� wiecej ni� �rednia swojego gatunku i mia�y zlecenie innej diety
select avg(waga) as [Srednia Waga] , nazwa into #nowa from Zwierzeta 
					group by nazwa

select Distinct Zwierzeta.nazwa , Zwierzeta.numer , Zwierzeta.waga , [Srednia Waga] from Zwierzeta
	inner join ZlecenieDiety ON Zwierzeta.numer = ZlecenieDiety.numer AND Zwierzeta.nazwa = ZlecenieDiety.gatunek
	inner join #nowa ON Zwierzeta.nazwa = #nowa.nazwa
	where Zwierzeta.waga > #nowa.[Srednia Waga]

	--Inaczej ale bez wypisania sredniej wagi gatunku
	select Distinct Zwierzeta.nazwa , Zwierzeta.numer , Zwierzeta.waga  from Zwierzeta
	inner join ZlecenieDiety ON Zwierzeta.numer = ZlecenieDiety.numer AND Zwierzeta.nazwa = ZlecenieDiety.gatunek
	where Zwierzeta.waga > (select avg(waga) as [Srednia Waga]  from Zwierzeta
		where Zwierzeta.nazwa=ZlecenieDiety.gatunek 
			group by nazwa);

--3)Jakie sk�adniki nie s� wykorzystywane w dietach a s� kupowane oraz ile ich u�yto w [KG]
select Skladniki.nazwa , sum(ModyfikacjePosilkow.ilosc) as [ile ich u�yto] from Skladniki , ModyfikacjePosilkow
	where (Skladniki.nazwa NOT IN (select Sklady_Posilkow.nazwa from Sklady_Posilkow )) 
	and (Skladniki.nazwa = ModyfikacjePosilkow.Skladnik)
	group by Skladniki.nazwa, ModyfikacjePosilkow.Skladnik
	order by nazwa

--4)Wy�wietla jaki procent kobiet jest Pracownikiem (Imie kobiety w Polsce ko�czy si� na 'A')
select cast(COUNT (*)/(select CAST( COUNT(*)as float)  from Pracownicy) as float)  AS [Procent Pracownik�w kt�rzy s� kobiet�]
					from Pracownicy
					where imie like '%a';


--5) Wszyscy pracownicy kt�rzy dzi� karmili zwierz�ta (byli dzi� w pracy) oraz te posi�ki by�y modyfikowane :)
select getdate()
select imie, nazwisko from Pracownicy
		join Karmienia on Pracownicy.ID_Pracownika= Karmienia.Pracownik
		where dzien = CAST(GETDATE() AS DATE)
		and Karmienia.ID in (select distinct (Karmienie) from ModyfikacjePosilkow);

--6) por�wnaj godzin� podania posi�ku do tej o kt�rej by� planowany dla danego gatunku
go
	create procedure [Porownanie godzin posilkow] @gatunek nvarchar(30)
	as
		select Posilki.godzina as [Godzina planowana], Karmienia.godzina as[ Godzina podania] , Karmienia.dzien as [Dzie� podania] FROM  Posilki
			join Karmienia on Karmienia.posilek = Posilki.Numer
			join Gatunki on Gatunki.dieta = Posilki.ID_Diety
			where Gatunki.Nazwa_Gatunku = @gatunek
			order by dzien DESC

exec  [Porownanie godzin posilkow] @gatunek = 'Lew';
--drop procedure [Porownanie godzin posilkow]
--7)Zlicza ilo�� Posi�k�w kt�re by�y modyfikowane na przedziale czasowym dla danego pracownika
select count(*) as [ilosc modyfikowanych] , Karmienia.Pracownik  from Karmienia
	join Pracownicy on Karmienia.Pracownik = Pracownicy.ID_Pracownika
	where exists
		(select * from ModyfikacjePosilkow
			where Karmienia.ID = ModyfikacjePosilkow.ID)
	and dzien between '2018/07/26' and '2018/09/27'
	group by Karmienia.Pracownik , Pracownicy.ID_Pracownika
	order by [ilosc modyfikowanych] DESC ;
