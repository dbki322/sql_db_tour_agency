--1. �������� ���� ������ Tour_agency

CREATE DATABASE Tour_agency

GO 

--2. ������������ ���� ������ Tour_agency

USE Tour_agency

GO

--3. �������� ������� User_info

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

--4. �������� ������� Client_order

CREATE TABLE Client_order
(
	order_id_clientorder INT NOT NULL IDENTITY(1,1),
	payment_clientorder VARCHAR(45) NOT NULL,
	amount_clientorder INT NOT NULL,
	order_date_clientorder DATE NULL,
	id_tour_clientorder INT NOT NULL,
	id_client_clientorder INT NOT NULL,
)

GO

--5. �������� ������� Tour

CREATE TABLE Tour
(
	id_tour_tour INT NOT NULL IDENTITY(1,1),
	price_tour MONEY NOT NULL,
	duration_tour VARCHAR(45) NOT NULL,
	id_airway_tour INT NULL,
	id_hotel_tour INT NULL,
	id_insurance_tour INT NULL
)

GO

--6. �������� ������� Airways

CREATE TABLE Airways
(
	id_airway_airways INT NOT NULL IDENTITY(1,1),
	airway_name_airways VARCHAR(45) NOT NULL,
	price_airways INT NOT NULL,
	class_airways VARCHAR(45) NOT NULL
)

GO

--7. �������� ������� Hotel

CREATE TABLE Hotel
(
	id_hotel_hotel INT NOT NULL IDENTITY(1,1),
	id_country_hotel INT NOT NULL,
	hotel_name_hotel VARCHAR(45) NOT NULL,
	class_hotel VARCHAR(45) NULL,
	price_hotel INT NOT NULL
)

GO

--8. �������� ������� Countries

CREATE TABLE Countries
(
	id_country_countries INT NOT NULL IDENTITY(1,1),
	country_countries VARCHAR(45) NOT NULL
)

GO

--9. C������� ������� Insurance

CREATE TABLE Insurance
(
	id_insurance_insurance INT NOT NULL IDENTITY(1,1),
	id_program_insurance INT NOT NULL,
	id_agency_insurance INT NOT NULL
)

GO

--10. �������� ������� Insurance_agency

CREATE TABLE Insurance_agency
(
	id_insurance_agency_insuranceagency INT NOT NULL IDENTITY(1,1) ,
	name__insuranceagency VARCHAR(45) NOT NULL
)

GO

--11. �������� ������� Insurance_programs

CREATE TABLE Insurance_programs
(
	id_insurance_programs_insuranceprograms INT IDENTITY(1,1),
	name_insuranceprograms VARCHAR(45) NOT NULL,
	price_insuranceprograms INT NOT NULL
)

GO

--12. �������� ����������� ��������� ������

ALTER TABLE User_info
ADD CONSTRAINT PK_userinfo PRIMARY KEY (id_client_userinfo)

GO

ALTER TABLE Client_order
ADD CONSTRAINT PK_clientorder PRIMARY KEY (order_id_clientorder)

GO

ALTER TABLE Tour
ADD CONSTRAINT PK_tour PRIMARY KEY (id_tour_tour)

GO

ALTER TABLE Airways
ADD CONSTRAINT PK_airways PRIMARY KEY (id_airway_airways)

GO

ALTER TABLE Hotel
ADD CONSTRAINT PK_hotel PRIMARY KEY (id_hotel_hotel)

GO

ALTER TABLE Countries
ADD CONSTRAINT PK_countries PRIMARY KEY (id_country_countries)

GO

ALTER TABLE Insurance
ADD CONSTRAINT PK_insurance PRIMARY KEY (id_insurance_insurance)

GO

ALTER TABLE Insurance_agency
ADD CONSTRAINT PK_insuranceagency PRIMARY KEY (id_insurance_agency_insuranceagency)

GO

ALTER TABLE Insurance_programs
ADD CONSTRAINT PK_insuranceprograms PRIMARY KEY(id_insurance_programs_insuranceprograms)

GO

--13. �������� ����������� ������� ������

ALTER TABLE Client_order
ADD CONSTRAINT FK_clientorder FOREIGN KEY (id_client_clientorder)
	REFERENCES User_info (id_client_userinfo),
	CONSTRAINT FK_idtour FOREIGN KEY (id_tour_clientorder)
	REFERENCES tour (id_tour_tour)

GO

ALTER TABLE Tour
ADD CONSTRAINT FK_idairway FOREIGN KEY (id_airway_tour)
	REFERENCES Airways (id_airway_airways),
	CONSTRAINT FK_idhotel FOREIGN KEY (id_hotel_tour)
	REFERENCES Hotel (id_hotel_hotel),
	CONSTRAINT FK_idinsurance FOREIGN KEY (id_insurance_tour)
	REFERENCES Insurance (id_insurance_insurance)

GO

ALTER TABLE Hotel
ADD CONSTRAINT FK_idcountry FOREIGN KEY (id_country_hotel)
	REFERENCES Countries (id_country_countries)	

GO

ALTER TABLE Insurance
ADD CONSTRAINT FK_idprogram FOREIGN KEY (id_program_insurance)
	REFERENCES Insurance_programs (id_insurance_programs_insuranceprograms),
	CONSTRAINT FK_idagency FOREIGN KEY (id_agency_insurance)
	REFERENCES Insurance_agency (id_insurance_agency_insuranceagency)

GO

--14. ���������� ������ �������.

INSERT INTO User_info
VALUES
('���������', '������', '������������', '5438297305837382','89098877633','jiji@gmail.com'),
('�����', '������', '������������', '1465834567341876' ,'86541235577', 'alo@bk.ru'),
('������', '���������', '��������', '2478654323775455', '88885643213', 'fedorneya@mail.ru'),
('�������', '������', '�������������', '2578942683572578', '89053213335', 'kakal@gmail.com'),
('�������', '����', '����������', '3975321579765324', '86546456456', 'kokoro@bk.ru'),
('���������', '�����', '�����������', '1573594302729416', '84354367788', 'kolento@bk.ru')

GO

INSERT INTO Countries
VALUES
('������'),
('�����'),
('�������'),
('��������'),
('�������'),
('���������')

GO

INSERT INTO Hotel
VALUES
(1,'����', '3 ������', 5000),
(2,'�����', '1 ������', 2000),
(6,'�����', '5 �����', 12000),
(5,'����', '2 ������', 11000),
(4,'����', '1 ������', 8000),
(3,'������', '4 ������', 10000)

GO

INSERT INTO Airways
VALUES
('�������', 33333, '5 �����'),
('������', 13000, '3  ������'),
('������', 8000, ' 1  ������'),
('�������', 9599, '2  ������'),
('����', 12455, '3  ������'),
('�������', 22000, '4  ������')

GO

INSERT INTO Insurance_agency
VALUES
('��������'),
('��������'),
('������'),
('�����'),
('�������'),
('������')

GO

INSERT INTO Insurance_programs
VALUES
('��������� ������ ���������', 123),
('��������� �����', 333),
('������ �������� ���������', 1488),
('����������� �� ��������', 522),
('����������� ������', 323),
('����������� ����������� ������', 323)

GO

INSERT INTO Insurance
VALUES
(1, 2),
(4, 5),
(2, 1),
(5, 6),
(3, 3),
(6, 4)

GO

INSERT INTO Tour
VALUES
(300000, '21 ����', 3, 1, 1),
(212122, '21 ����', 2, 6, 1),
(90000, '5 ����', 1, 5, 2),
(30000, '2 ���', 4, 2, 5),
(50000, '6 ����', 5, 3, 4),
(60000, '7 ����', 6, 1, 6)

GO

INSERT INTO Client_order
VALUES
('��������', 2, '2018-07-29', 3, 2),
('�� ��������', 1, '2018-08-11', 1, 1),
('��������', 3, '2018-07-02', 4, 1),
('��������', 1, '2018-03-29', 5, 3),
('�� ��������', 2, '2018-05-23', 6, 4),
('�� ��������', 3, '2018-07-19', 2, 6)

GO

--15. �������� �������� "������������ ������"

CREATE PROCEDURE unpaid
AS
SELECT cl.order_id_clientorder AS '��� ������', u.surname_userinfo AS '�������', u.name_userinfo AS '���', 
	u.middle_name_userinfo AS '��������', cl.amount_clientorder AS '���������� �������', 
	cl.order_date_clientorder AS '���� ���������� ������',cl.id_tour_clientorder AS '��� ����',
	cl.payment_clientorder AS '������'
FROM Client_order AS cl JOIN User_info AS u ON cl.id_client_clientorder = u.id_client_userinfo
WHERE payment_clientorder = '�� ��������'

GO

--16. �������� ������������� "��������� �� �����"

CREATE VIEW tour_insurance
AS
SELECT t.id_tour_tour AS '��� ����', t.price_tour AS '���� ����', t.duration_tour AS '����������������� ����', 
	i_p.name_insuranceprograms AS '�������� ���������', i_p.price_insuranceprograms AS '���� ���������',
	i_a.name__insuranceagency AS '��� ���������� ��������'
FROM Tour AS t JOIN Insurance AS i ON t.id_insurance_tour = i.id_insurance_insurance
	JOIN Insurance_programs AS i_p ON i.id_program_insurance = i_p.id_insurance_programs_insuranceprograms
	JOIN Insurance_agency AS i_a ON i.id_agency_insurance = i_a.id_insurance_agency_insuranceagency
WITH CHECK OPTION;

GO 

--17. �������� ��������� "���� �� �������";

CREATE PROCEDURE tour_of_country 
@country AS VARCHAR(45)
AS
SELECT t.id_tour_tour AS '��� ����', t.price_tour AS '���� ����',
	t.duration_tour AS '����������������� ����', 
	c.country_countries AS '������'
FROM Tour AS t JOIN Hotel AS h ON t.id_hotel_tour = h.id_hotel_hotel
	JOIN Countries AS c ON h.id_country_hotel = c.id_country_countries
WHERE c.country_countries = @country

GO

--18. �������� ��������� "����� ������� ���"

CREATE PROCEDURE cheapest_tours
AS 
BEGIN
    DECLARE @money AS MONEY;
    SET @money = (SELECT MIN(price_tour)
        FROM Tour)
END
SELECT id_tour_tour AS '��� ����', price_tour AS '���� ����', duration_tour AS '����������������� ����'
FROM Tour
WHERE price_tour = @money

GO

--19. �������� �������� ������������ �������������� ������� ������ �� ������� Countries

SELECT TOP 0 *,_User = USER_NAME(), _Data = GETDATE()
INTO Countries_buffer FROM Countries
GO
CREATE TRIGGER del_Countries ON Countries FOR DELETE 
AS 
IF CURRENT_USER = 'dbo'
BEGIN 
PRINT '�� �� ������.'
ROLLBACK TRAN
END ELSE
BEGIN
SET IDENTITY_INSERT Countries_buffer ON
INSERT INTO Countries_buffer (id_country_countries, country_countries, _User, _Data)
SELECT id_country_countries, country_countries, USER_NAME(), GETDATE()
FROM deleted 
PRINT '�������� ������� ���������'
SET IDENTITY_INSERT Countries_buffer OFF
END

GO

--20. �������� �������� ����������� �������� ������ � ������� ��������� ����������� ������ ��������������.

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
PRINT '��������� �������������!!!'
SET IDENTITY_INSERT Insurance_programs_buffer OFF
END ELSE
BEGIN
PRINT '��������� ������ ���������!!!'
ROLLBACK TRAN
END

GO