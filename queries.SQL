--Minimum price approx local currency
SELECT min(price_aprox_local_currency) as Price_Local_Currency
FROM `properati-data-public.properties_ar.properties_rent_201501` LIMIT 100

--Maximum price approx local currency
SELECT max(price_aprox_local_currency) as Price_Local_Currency
FROM `properati-data-public.properties_ar.properties_rent_201501` LIMIT 100

--Average of Price approx level currency
SELECT avg(price_aprox_local_currency)
FROM `properati-data-public.properties_ar.properties_rent_201501` LIMIT 100 

--Sum of Price approximate local currency
SELECT sum(price_aprox_local_currency)
FROM `properati-data-public.properties_ar.properties_rent_201501` LIMIT 100

--Rounding off Price approx local currency to 2 decimal places
SELECT round(price_aprox_local_currency,2)
FROM `properati-data-public.properties_ar.properties_rent_201501` LIMIT 100

--Number of rows were Price approx local currency is not null
SELECT count(price_aprox_local_currency)
FROM `properati-data-public.properties_ar.properties_rent_201501` LIMIT 100

--Number of states
SELECT count(distinct state_name) 
FROM `properati-data-public.properties_ar.properties_rent_201501` LIMIT 100

--Names of States
SELECT distinct state_name
FROM `properati-data-public.properties_ar.properties_rent_201501` LIMIT 100

--State names taking the form of Alphabets
WITH `properati-data-public.properties_ar.properties_rent_201501` as
(SELECT 'Salta' as A,
'Betania' as B,
'Capital Federal' as C)
SELECT * FROM `properati-data-public.properties_ar.properties_rent_201501` LIMIT 100

--Sum of different price types for Misiones
SELECT 'Misiones',
sum(price) as Price,
sum(price_aprox_local_currency) as Local,
sum(price_aprox_usd) as USD,
sum(price_per_m2) as m2,
sum(price_usd_per_m2) as USD_m2
FROM `properati-data-public.properties_ar.properties_rent_201501` LIMIT 100
