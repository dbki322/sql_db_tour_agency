/*
Создание ограничения внешних ключей
*/

USE Tour_agency

ALTER TABLE Client_order
ADD CONSTRAINT FK_clientorder FOREIGN KEY (id_client_clientorder)
	REFERENCES User_info (id_client_userinfo),
	CONSTRAINT FK_idtour FOREIGN KEY (id_tour_clientorder)
	REFERENCES tour (id_tour_tour)

GO

ALTER TABLE tour
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
