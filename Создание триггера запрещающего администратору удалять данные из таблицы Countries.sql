/*****
Создание триггера запрещающего администратору удалять данные из таблицы Countries
*****/
SELECT TOP 0 *,_User = USER_NAME(), _Data = GETDATE()
INTO Countries_buffer FROM Countries
GO
CREATE TRIGGER del_Countries ON Countries FOR DELETE 
AS 
IF CURRENT_USER = 'dbo'
BEGIN 
PRINT 'Ты не удолиш.'
ROLLBACK TRAN
END ELSE
BEGIN
SET IDENTITY_INSERT Countries_buffer ON
INSERT INTO Countries_buffer (id_country_countries, country_countries, _User, _Data)
SELECT id_country_countries, country_countries, USER_NAME(), GETDATE()
FROM deleted 
PRINT 'Операция успешно завершена'
SET IDENTITY_INSERT Countries_buffer OFF
END

GO