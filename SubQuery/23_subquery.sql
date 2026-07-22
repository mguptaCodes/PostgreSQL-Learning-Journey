SELEcT*FROM accounts;

SELECT*FROM accounts 
WHERE amount> (SELECT AVG(amount) FROM accounts);    --(dynamic solution)

--or--

SELECT*FROM accounts
WHERE amount>55.57;