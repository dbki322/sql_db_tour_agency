/*
Создание таблицы Insurance_agency
*/

USE Tour_agency

CREATE TABLE Insurance_agency
(
	id_insurance_agency_insuranceagency INT NOT NULL IDENTITY(1,1) ,
	name__insuranceagency VARCHAR(45) NOT NULL
)

GO