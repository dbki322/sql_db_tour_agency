/*
Создание таблицы Insurance
*/

USE Tour_agency

CREATE TABLE Insurance
(
	id_insurance_insurance INT NOT NULL IDENTITY(1,1),
	id_program_insurance INT NOT NULL,
	id_agency_insurance INT NOT NULL
)

GO