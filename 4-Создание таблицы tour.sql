/*
Создание таблицы tour
*/

USE Tour_agency

CREATE TABLE tour
(
	id_tour_tour INT NOT NULL IDENTITY(1,1),
	price_tour MONEY NOT NULL,
	duration_tour VARCHAR(45) NOT NULL,
	id_airway_tour INT NULL,
	id_hotel_tour INT NULL,
	id_insurance_tour INT NULL
)

GO