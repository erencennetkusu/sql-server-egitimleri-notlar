
--<> ��areti ile id'si 5 olmayan personelleri getiriyoruz 
select * from Personeller WHERE PersonelID<>5

-- Buradaki �rne�imizde YEAR fonksiyonu kullanarak tarih i�indeki y�l� se�erek o y�ldan b�y�k yada e�it olan verilerimizi sorguluyoruz
select * from Personeller WHERE YEAR(IseBaslamaTarihi) > 1992
select * from Personeller WHERE YEAR(IseBaslamaTarihi) = 1993

-- Buradaki �rne�imizde ise DAY fonksiyonunu kullanarak tarih i�inden g�n� se�iyoruz <> ve bu sembol ile g�ne e�it olmayan veriyi getiriyoruz.
select * from Personeller WHERE DAY(DogumTarihi) <> 29

-- Buradaki �rne�imizde 1950 ile 1965 aras�ndaki verileri listeliyoruz 
select * from Personeller WHERE YEAR(DogumTarihi) >1950  and YEAR(DogumTarihi) <1965

-- Buradaki �rne�imizde ise ya�ad�g� �ehir london olan personelleri listeliyoruz .
select * from Personeller WHERE Sehir='London'

--Buradaki �rne�imizde or kullanarak veya i�lemini sorgumuza kat�yoruz �rnegimiz 
select * from Personeller WHERE Sehir='London' or Sehir='Tacoma'

-- Buradaki �rne�imizde Between komutu kullanarak 2 tarih aras�ndaki verilerimizi getiriyoruz.
select * from Personeller WHERE YEAR(DogumTarihi) Between 1950 and 1965

-- Buradaki �rne�imizde In komutu ile verilerimizi �ekiyoruz In komutu or veya yerine kullan�lan bir komuttur.
select * from Personeller WHERE Sehir In('London','Tacoma')

--Buradaki �rne�imizde Personeller tablomuzdaki ba� harfi j olan verilerimizi listeleyelim
select * from Personeller WHERE Adi LIKE 'j%'

-- Buradaki �rne�imizde Personeller tablomuzdaki son harfi y olan verilerimizi listeleyelim
select * from Personeller WHERE Adi LIKE '%y'

-- Buradaki �rne�imizde isminin son harfi ert olan verilerimizi Personel tablosundan Listeleyelim.
select * from Personeller WHERE Adi LIKE '%ert'

-- Burdaki �rne�imizde isminin ilk harfi r son harfi t olan verilerimizi Personel tablosundan Listeleyelim 
select * from Personeller WHERE Adi LIKE 'r%t'

-- Buradaki �rne�imizde isminin i�erisinde an harfi olan verilerimizi Personel tablosundan Listeleyelim
select * from Personeller WHERE Adi LIKE '%an%'

-- Buradaki �rne�imizde isminin ba� harfinde n ve isminin i�erisinde an ge�en verilerimizi Personel tablosundan Listeleyelim
select * from Personeller WHERE Adi LIKE 'n%an%'

-- Buradaki �rne�imizde isminin ba� harfi a ikinci harfi �nemsiz ���nc� harfi d olan verilerimizi Personel tablosundan Listeleyelim
-- _ i�areti �nemli degil anlam�na gelmektedir.
select * from Personeller WHERE Adi LIKE 'a_d%'

-- Buradaki �rne�imizde isminin ba� harfi m yada n yada r olan verilerimizi Personel tablosundan Listeleyelim 
-- [] i�areti yada anlaman�na gelmektedir.
select * from Personeller WHERE Adi LIKE '[mnr]%'

-- Buradaki �rne�imizde isminin i�erisinda a yada i ge�en verilerimizi Personel tablosundan Listeleyelim
select * from Personeller WHERE Adi LIKE '%[ai]%'

-- Buradaki �rne�imizde isminin ba� harfi i�erisinde a yada k olan verilerimizi alfabetik s�raya g�re getirelim
select * from Personeller WHERE Adi LIKE '[a-k]%'

-- Buradaki �rne�imizde isminin ba� harfi a olmayan  verilerimizi Personel tablosundan Listeleyelim 
select * from Personeller WHERE Adi LIKE '[^a]%'

-- Buradaki �rne�imizde isminin ba� harfi an olmayan verilerimizi Personel tablosundan Listeleyelim
select * from Personeller WHERE Adi LIKE '[^an]%'

-- Buradaki �rne�imizde verilerimiz i�erisindeki �zel karekterleri binevi text olarak yani �zel karekter olmad�g�n� belirtiyoruz
-- �zel karekter olmad�g�n� belirtmek i�in ise [] simgesini kullan�l�yoruz 
select * from Personeller WHERE Adi LIKE '[_]%' -- Burada _ ba�layan verileri listelemi� olduk �zel karekter olmad�g�n� belirtmek i�in [] simgesini kulland�k
-- Bir farkl� �rnek olarak Escape  ka��� karekterlerini kullanabiliriz
select * from Personeller WHERE Adi LIKE '�_%' Escape '�' -- Escape'de belirtelerek � harfinin ka��� karekteri oldu�unu tan�mlad�k

-- Buradaki �rne�imizde Personel tablomuzdaki PersonelID'lerin ortalamas�n� alan AVG semb�l�n� kullan�yoruz
Select AVG(PersonelID) from Personeller

-- Buradaki �rne�imizde ise Personel tablomuzdaki PersonelID'lerin max degerini al�yoruz.
Select MAX(PersonelID) from Personeller

-- Buradaki �rne�imizde ise Personel tablomuzdaki PersonelID'lerin min degerini al�yoruz.
Select MIN(PersonelID) from Personeller

-- Buradaki �rne�imizde ise COUNT semb�l� ile Personel tablomuzdaki verilerimizi  say�yoruz al�yoruz.
Select COUNT(*) from Personeller

-- Buradaki �rne�imizde ise Sat��lar tablomuzdaki nakliyeUcreti sutunumuzu SUM semb�l� ile topluyoruz
Select SUM(NakliyeUcreti) from Satislar