create table salesperson(
    seller_id serial primary key,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(50),
    email VARCHAR(100)
);
create table mechanic(
    mechanic_id serial primary key,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    address VARCHAR(100),
    phone_number VARCHAR(50)
);
create table car(
    car_serial_number serial primary key,
    make VARCHAR(50),
    model VARCHAR(50),
    car_year VARCHAR(4),
    color VARCHAR(30),
    is_new BOOLEAN,
    car_payment_amount NUMERIC(6,2),
    seller_id INT,
    foreign key (seller_id) references salesperson(seller_id)
);
create table customer(
    customer_id serial primary key,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(100),
        car_serial_number int,
    foreign key (car_serial_number) references car(car_serial_number)
);
create table service(
    service_id serial primary key,
    mechanic_id int,
    foreign key (mechanic_id) references mechanic(mechanic_id),
    car_serial_number int,
    foreign key (car_serial_number) references car(car_serial_number),
    service_payment_amount NUMERIC(6,2),
    service_description VARCHAR(500)
);
create table invoice(
    invoice_id serial primary key,
    invoice_date timestamp default current_timestamp,
    seller_id int,
    foreign key (seller_id) references salesperson(seller_id),
    customer_id int,
    foreign key (customer_id) references customer(customer_id),
    car_serial_number int,
    foreign key (car_serial_number) references car(car_serial_number)
);

ALTER TABLE customer
ADD COLUMN loyalty_member BOOLEAN DEFAULT FALSE;

ALTER TABLE mechanic
ADD COLUMN top_sales BOOLEAN DEFAULT FALSE;