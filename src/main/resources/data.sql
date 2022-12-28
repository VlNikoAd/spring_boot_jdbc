insert into CUSTOMERS(name, surname, age, phone_number)
values ('Vlad', 'Nikolaenko', 27, 8999999999),
       ('Artem', 'Vashtov', 33, 89998888888),
       ('Andrey', 'Vasiliev', 24, 89997777777),
       ('Nika', 'Bogdanova', 19, 89996666666);

insert into ORDERS (customer_id, product_name, amount)
values (1, 'Apple', 500),
       (2, 'Meizu', 100),
       (3, 'Samsung', 400),
       (4, 'Nokia', 300);