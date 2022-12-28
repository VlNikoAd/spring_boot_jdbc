insert into CUSTOMERS(name, surname, age, phone_number)
values ('Anna', 'Gracheva', 30, 84949030299),
       ('Olga', 'Mac', 33, 84949030269),
       ('Tomas', 'Gray', 2, 84949030297),
       ('Alexey', 'Zhukov', 45, 84949030245);

insert into ORDERS (customer_id, product_name, amount)
values (1, 'Latte', 5),
       (2, 'Beer', 10),
       (3, 'Cheese', 6),
       (4, 'Coca-Cola', 500);