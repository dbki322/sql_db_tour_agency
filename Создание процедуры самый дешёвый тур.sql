/*****
�������� ��������� "����� ������� ���"
*****/
CREATE PROCEDURE cheapest_tours
AS 
BEGIN
	DECLARE @money AS MONEY;
	SET @money = (SELECT MIN(price_tour)
		FROM tour)
END
SELECT id_tour_tour AS '��� ����', price_tour AS '���� ����', duration_tour AS '����������������� ����'
FROM tour
WHERE price_tour = @money

GO