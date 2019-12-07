/*
Создание ограничения первичных ключей
*/

USE Tour_agency

ALTER TABLE User_info
ADD CONSTRAINT PK_userinfo PRIMARY KEY (id_client_userinfo)

GO

ALTER TABLE Client_order
ADD CONSTRAINT PK_clientorder PRIMARY KEY (order_id_clientorder)

GO

ALTER TABLE tour
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


