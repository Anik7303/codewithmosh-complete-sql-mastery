USE sql_store;

INSERT INTO
    customers
VALUES (
        DEFAULT,
        'Jane',
        'Wales',
        '1990-01-01',
        NULL, -- DEFAULT
        '213 Welsh Street',
        'Colorado',
        'CO',
        DEFAULT
    );

INSERT INTO
    customers (
        first_name,
        last_name,
        birth_date,
        address,
        city,
        state
    )
VALUES (
        'Will',
        'Smith',
        '1978-01-01',
        '23 Baker Street',
        'London',
        'PA'
    );