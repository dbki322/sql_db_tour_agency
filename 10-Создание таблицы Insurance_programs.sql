/*
Создание таблицы Insurance_programs
*/

USE Tour_agency

CREATE TABLE Insurance_programs
(
	id_insurance_programs_insuranceprograms INT IDENTITY(1,1),
	name_insuranceprograms VARCHAR(45) NOT NULL,
	price_insuranceprograms INT NOT NULL
)

GO