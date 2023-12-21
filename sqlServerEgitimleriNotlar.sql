
--<> Ýþareti ile id'si 5 olmayan personelleri getiriyoruz 
select * from Personeller WHERE PersonelID<>5

-- Buradaki örneðimizde YEAR fonksiyonu kullanarak tarih içindeki yýlý seçerek o yýldan büyük yada eþit olan verilerimizi sorguluyoruz
select * from Personeller WHERE YEAR(IseBaslamaTarihi) > 1992
select * from Personeller WHERE YEAR(IseBaslamaTarihi) = 1993

-- Buradaki örneðimizde ise DAY fonksiyonunu kullanarak tarih içinden günü seçiyoruz <> ve bu sembol ile güne eþit olmayan veriyi getiriyoruz.
select * from Personeller WHERE DAY(DogumTarihi) <> 29

-- Buradaki örneðimizde 1950 ile 1965 arasýndaki verileri listeliyoruz 
select * from Personeller WHERE YEAR(DogumTarihi) >1950  and YEAR(DogumTarihi) <1965

-- Buradaki örneðimizde ise yaþadýgý þehir london olan personelleri listeliyoruz .
select * from Personeller WHERE Sehir='London'

--Buradaki örneðimizde or kullanarak veya iþlemini sorgumuza katýyoruz örnegimiz 
select * from Personeller WHERE Sehir='London' or Sehir='Tacoma'

-- Buradaki örneðimizde Between komutu kullanarak 2 tarih arasýndaki verilerimizi getiriyoruz.
select * from Personeller WHERE YEAR(DogumTarihi) Between 1950 and 1965

-- Buradaki örneðimizde In komutu ile verilerimizi çekiyoruz In komutu or veya yerine kullanýlan bir komuttur.
select * from Personeller WHERE Sehir In('London','Tacoma')

--Buradaki örneðimizde Personeller tablomuzdaki baþ harfi j olan verilerimizi listeleyelim
select * from Personeller WHERE Adi LIKE 'j%'

-- Buradaki örneðimizde Personeller tablomuzdaki son harfi y olan verilerimizi listeleyelim
select * from Personeller WHERE Adi LIKE '%y'

-- Buradaki örneðimizde isminin son harfi ert olan verilerimizi Personel tablosundan Listeleyelim.
select * from Personeller WHERE Adi LIKE '%ert'

-- Burdaki örneðimizde isminin ilk harfi r son harfi t olan verilerimizi Personel tablosundan Listeleyelim 
select * from Personeller WHERE Adi LIKE 'r%t'

-- Buradaki örneðimizde isminin içerisinde an harfi olan verilerimizi Personel tablosundan Listeleyelim
select * from Personeller WHERE Adi LIKE '%an%'

-- Buradaki örneðimizde isminin baþ harfinde n ve isminin içerisinde an geçen verilerimizi Personel tablosundan Listeleyelim
select * from Personeller WHERE Adi LIKE 'n%an%'

-- Buradaki örneðimizde isminin baþ harfi a ikinci harfi önemsiz üçüncü harfi d olan verilerimizi Personel tablosundan Listeleyelim
-- _ iþareti önemli degil anlamýna gelmektedir.
select * from Personeller WHERE Adi LIKE 'a_d%'

-- Buradaki örneðimizde isminin baþ harfi m yada n yada r olan verilerimizi Personel tablosundan Listeleyelim 
-- [] iþareti yada anlamanýna gelmektedir.
select * from Personeller WHERE Adi LIKE '[mnr]%'

-- Buradaki örneðimizde isminin içerisinda a yada i geçen verilerimizi Personel tablosundan Listeleyelim
select * from Personeller WHERE Adi LIKE '%[ai]%'

-- Buradaki örneðimizde isminin baþ harfi içerisinde a yada k olan verilerimizi alfabetik sýraya göre getirelim
select * from Personeller WHERE Adi LIKE '[a-k]%'

-- Buradaki örneðimizde isminin baþ harfi a olmayan  verilerimizi Personel tablosundan Listeleyelim 
select * from Personeller WHERE Adi LIKE '[^a]%'

-- Buradaki örneðimizde isminin baþ harfi an olmayan verilerimizi Personel tablosundan Listeleyelim
select * from Personeller WHERE Adi LIKE '[^an]%'

-- Buradaki örneðimizde verilerimiz içerisindeki özel karekterleri binevi text olarak yani özel karekter olmadýgýný belirtiyoruz
-- Özel karekter olmadýgýný belirtmek için ise [] simgesini kullanýlýyoruz 
select * from Personeller WHERE Adi LIKE '[_]%' -- Burada _ baþlayan verileri listelemiþ olduk özel karekter olmadýgýný belirtmek için [] simgesini kullandýk
-- Bir farklý örnek olarak Escape  kaçýþ karekterlerini kullanabiliriz
select * from Personeller WHERE Adi LIKE 'ü_%' Escape 'ü' -- Escape'de belirtelerek ü harfinin kaçýþ karekteri olduðunu tanýmladýk

-- Buradaki örneðimizde Personel tablomuzdaki PersonelID'lerin ortalamasýný alan AVG sembölünü kullanýyoruz
Select AVG(PersonelID) from Personeller

-- Buradaki örneðimizde ise Personel tablomuzdaki PersonelID'lerin max degerini alýyoruz.
Select MAX(PersonelID) from Personeller

-- Buradaki örneðimizde ise Personel tablomuzdaki PersonelID'lerin min degerini alýyoruz.
Select MIN(PersonelID) from Personeller

-- Buradaki örneðimizde ise COUNT sembülü ile Personel tablomuzdaki verilerimizi  sayýyoruz alýyoruz.
Select COUNT(*) from Personeller

-- Buradaki örneðimizde ise Satýþlar tablomuzdaki nakliyeUcreti sutunumuzu SUM sembölü ile topluyoruz
Select SUM(NakliyeUcreti) from Satislar