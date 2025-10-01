UPDATE demo
SET userid = lookup.userid
FROM lookup
WHERE lookup.name = 'Shruti';
