USE sql_store;

INSERT INTO
    shippers (name)
VALUES ('Shipper 1'),
    ('Shipper 2'),
    ('Shipper 3');

INSERT INTO
    shippers
VALUES (DEFAULT, 'Shipper 4'),
    (DEFAULT, 'Shipper 5');