/*****
�������� ��������� "���� �� �������";
*****/
CREATE PROCEDURE tour_of_country 
@country AS VARCHAR(45)
AS
SELECT t.id_tour_tour AS '��� ����', t.price_tour AS '���� ����',
	t.duration_tour AS '����������������� ����', 
	c.country_countries AS '������'
FROM tour AS t JOIN Hotel AS h ON t.id_hotel_tour = h.id_hotel_hotel
	JOIN Countries AS c ON h.id_country_hotel = c.id_country_countries
WHERE c.country_countries = @country

GO
