/* 
Создание таблицы User_info
*/

USE Tour_agency

CREATE TABLE User_info
(
	id_client_userinfo INT NOT NULL IDENTITY(1, 1),
	surname_userinfo VARCHAR(45) NOT NULL,
	name_userinfo VARCHAR(45) NOT NULL,
	middle_name_userinfo VARCHAR(45) NOT NULL,
	passport_ID_userinfo VARCHAR(16) NOT NULL,
	phone_userinfo VARCHAR(20) NOT NULL,
	email_userinfo VARCHAR(45) NULL
)

GO