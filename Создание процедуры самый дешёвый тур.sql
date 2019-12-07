/*****
Создание процедуры "Самый дешёвый тур"
*****/
CREATE PROCEDURE cheapest_tours
AS 
BEGIN
	DECLARE @money AS MONEY;
	SET @money = (SELECT MIN(price_tour)
		FROM tour)
END
SELECT id_tour_tour AS 'Код тура', price_tour AS 'Цена тура', duration_tour AS 'Продолжительность тура'
FROM tour
WHERE price_tour = @money

GO