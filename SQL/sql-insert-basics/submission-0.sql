CREATE TYPE account_type AS ENUM ('checking', 'savings', 'cd', 'money_market');

CREATE TABLE bank_accounts (
    id INTEGER PRIMARY KEY,
    account_type account_type,
    balance INTEGER
);
-- Do not modify above this line --

INSERT INTO bank_accounts (id, account_type, balance) 
VALUES
('1', 'Alice', 'active'),
('2', 'Bob', 'inactive'),
('3', 'Charlie', 'pending');







-- Do not modify below this line --
SELECT * FROM bank_accounts;
