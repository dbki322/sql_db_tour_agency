/*****
�������� �������� "������������ ������"
*****/
CREATE PROCEDURE unpaid
AS
SELECT cl.order_id_clientorder AS '��� ������', u.surname_userinfo AS '�������', u.name_userinfo AS '���', 
	u.middle_name_userinfo AS '��������', cl.amount_clientorder AS '���������� �������', 
	cl.order_date_clientorder AS '���� ���������� ������',cl.id_tour_clientorder AS '��� ����',
	cl.payment_clientorder AS '������'
FROM Client_order AS cl JOIN User_info AS u ON cl.id_client_clientorder = u.id_client_userinfo
WHERE payment_clientorder = '�� ��������'

GO