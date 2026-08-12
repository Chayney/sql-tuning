EXPLAIN (ANALYZE, BUFFERS)
SELECT *
FROM users
WHERE email = 'user_500000@example.com';