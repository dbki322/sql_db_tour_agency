/*****
Создание поцедуры "Неоплаченные путёвки"
*****/
CREATE PROCEDURE unpaid
AS
SELECT cl.order_id_clientorder AS 'Код заказа', u.surname_userinfo AS 'Фамилия', u.name_userinfo AS 'Имя', 
	u.middle_name_userinfo AS 'Отчество', cl.amount_clientorder AS 'Количество путевок', 
	cl.order_date_clientorder AS 'Дата оформления заказа',cl.id_tour_clientorder AS 'Код тура',
	cl.payment_clientorder AS 'Оплата'
FROM Client_order AS cl JOIN User_info AS u ON cl.id_client_clientorder = u.id_client_userinfo
WHERE payment_clientorder = 'не оплачено'

GO