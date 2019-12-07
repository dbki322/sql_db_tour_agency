/*****
Создание триггера позволяющий изменять данные в таблице Программы страхования только администратору.
*****/
SELECT TOP 0 id_insurance_programs_insuranceprograms, NEW_name_ins = name_insuranceprograms,
	OLD_name_ins = name_insuranceprograms, NEW_price_ins = price_insuranceprograms,
	OLD_price_ins = price_insuranceprograms,  _User = USER_NAME(), _Data = GETDATE()
INTO Insurance_programs_buffer
FROM Insurance_programs
GO
CREATE TRIGGER Update_Insurance_programs ON Insurance_programs FOR UPDATE AS
IF CURRENT_USER = 'dbo'
BEGIN
SET IDENTITY_INSERT Insurance_programs_buffer ON
DECLARE @rybkina VARCHAR(45) = (SELECT name_insuranceprograms 
		FROM deleted WHERE UPDATE(name_insuranceprograms)),
	@lizka INT = (SELECT price_insuranceprograms 
		FROM deleted WHERE UPDATE(price_insuranceprograms));
INSERT INTO Insurance_programs_buffer(id_insurance_programs_insuranceprograms, NEW_name_ins,
	OLD_name_ins, NEW_price_ins,OLD_price_ins, _User, _Data)
SELECT id_insurance_programs_insuranceprograms, name_insuranceprograms,
	@rybkina, price_insuranceprograms, @lizka, USER_NAME(), GETDATE()
FROM inserted
PRINT 'Изменение зафиксировано!!!'
SET IDENTITY_INSERT Insurance_programs_buffer OFF
END ELSE
BEGIN
PRINT 'Изменение данных запрещено!!!'
ROLLBACK TRAN 
END

GO	