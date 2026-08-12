INSERT INTO users (name, email, age, created_at)
SELECT
    'user_' || i,
    'user_' || i || '@example.com',
    (random() * 80 + 10)::int,
    NOW() - (random() * INTERVAL '1000 days')
FROM generate_series(1, 1000000) AS s(i);

ANALYZE users;