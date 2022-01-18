insert into salesperson(
	first_name,
	last_name,
	phone_number,
	email
) values(
	'Hector',
 	'Barajas',
 	'(111) 111-1111',
 	'HectorB@carsales.com'
),( 
	'David',
 	'Shin',
 	'(222) 222-2222',
 	'DavidS@carsales.com'
);

select * from salesperson;

insert into mechanic(
	first_name,
	last_name,
	phone_number,
	address,
	email
) values(
	'Mark',
	'Torres',
	'(333) 333-3333',
	'123 HW Dealership',
	'MarkT@carsales.com'
),(
	'Alex',
	'Modesto',
	'(444) 444-4444)',
	'123 HW Dealership',
	'AlexM@carsales.com'
)

select * from mechanic;

insert into car(
	make,
	model,
	car_year,
	color,
	is_new, 
	car_payment_amount,
	seller_id
) values(
	'Honda',
	'Civic',
	'2022',
	'Black',
	true,
	999.99,
	1
),(
	'Toyota',
	'Camry',
	'2022',
	'Black',
	true,
	999.99,
	1
),(
	'Honda',
	'Accord',
	'2010',
	'Blue',
	false,
	499.99,
	null
),(
	'Toyota',
	'Corolla',
	'2010',
	'Black',
	false,
	499.99,
	null
);

select * from car;

insert into customer(
	first_name,
	last_name,
	phone_number,
	email,
	address,
	car_serial_number 
) values(
	'Brian',
	'Stanton',
	'(555) 555-5555',
	'BrianS@carcustomer.com',
	'123 Canyon Creek rd',
	4
),(
	'Gerardo',
	'Montalvo',
	'(666) 666-6666',
	'GerardoM@carcustomer.com',
	'234 Magic Knight rd',
	3
),(
	'Juan',
	'Tejeda',
	'(777) 777-7777',
	'JuanT@carcustomer.com',
	'345 Rainbow rd',
	2
),(
	'Alex',
	'Alaniz',
	'(888) 888-8888',
	'AlexA@carcustomer.com',
	'456 High Meadow rd',
	1
);

select * from customer

insert into invoice(
	seller_id,
	customer_id,
	car_serial_number
) values(
	1,
	4,
	1
),( 2,
	3,
	2
);

select * from invoice

insert into service(
	service_payment_amount,
	service_description,
	car_serial_number,
	mechanic_id
) values(
	499.99,
	'Blinker fluid',
	3,
	2
),(
	299.99,
	'Light Speed Module Chip',
	4,
	2	
),(
	799.99,
	'20 PSI Turbo',
	1,
	1
),(
	999.99,
	'New Tires',
	2,
	1
);

select * from service
