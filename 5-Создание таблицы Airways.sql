/*
Создание таблицы Airways
*/

USE Tour_agency

CREATE TABLE Airways
(
	id_airway_airways INT NOT NULL IDENTITY(1,1),
	airway_name_airways VARCHAR(45) NOT NULL,
	price_airways INT NOT NULL,
	class_airways VARCHAR(45) NOT NULL
)

GO