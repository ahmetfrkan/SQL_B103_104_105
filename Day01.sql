CREATE TABLE ogrenciler1
(
ogrenci_no char(7),
isim varchar(20),
soyisim varchar(25),
not_ort real, --ondalikli sayilar kullanilir (Double gibi)
kayit_tarih	date
);

--VAROLOLAN TABLODAN YENI BIR TABLO OLUSTURMA
CREATE TABLE ogrenci_notlari
AS --Benzer tablodaki basliklarla ve data tipleriyle yeni bir tablo olusturmak icin normal tablo olustururken ki pazrentezler yerine As kullanip Select komutuyla almak istedigimiz verilieri aliriz
SELECT isim,soyisim,not_ort FROM ogrenciler1;

-- DML -- DATA MANUPULATION LANG.
-- INSERT (Database e veri ekleme)
INSERT INTO ogrenciler1 VALUES (1234567,'Said','ILHAN',85.5,now());
INSERT INTO ogrenciler1 VALUES (1234567,'Said','ILHAN',85.5,'2022-12-11');

-- BIR TABLOYA PARCALI VERI EKLEMEK ISTERSEK

INSERT INTO ogrenciler1 (isim,soyisim) VALUES ('Erol','Evren');

--DQL - DATA QUERY LANG.
-- SELECT

select * FROM ogrenciler1;