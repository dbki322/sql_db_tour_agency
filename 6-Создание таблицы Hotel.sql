/*
Создание таблицы Hotel
*/

USE Tour_agency

CREATE TABLE Hotel
(
	id_hotel_hotel INT NOT NULL IDENTITY(1,1),
	id_country_hotel INT NOT NULL,
	hotel_name_hotel VARCHAR(45) NOT NULL,
	class_hotel VARCHAR(45) NULL,
	price_hotel INT NOT NULL
)

GO