/*
Создание таблицы Client_order
*/

USE Tour_agency

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