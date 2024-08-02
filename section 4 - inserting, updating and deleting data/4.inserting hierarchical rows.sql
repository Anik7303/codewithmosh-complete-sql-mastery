INSERT INTO
    orders (
        customer_id,
        order_date,
        status
    )
VALUES (1, '2019-01-15', 1);

INSERT INTO
    order_items
VALUES (LAST_INSERT_ID(), 1, 4, 2.39),
    (LAST_INSERT_ID(), 3, 3, 1.55),
    (LAST_INSERT_ID(), 4, 5, 0.90);