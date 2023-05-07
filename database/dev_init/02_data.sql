INSERT INTO users (id) VALUES('Re5Pbbfl0bxn12Uar7exGrDwsP9N');

INSERT INTO accounts (id, user_id, name, description) VALUES ('68db8db3-122b-4657-9ba8-51cc60f6d7e9', 'Re5Pbbfl0bxn12Uar7exGrDwsP9N', 'Savings', 'Savings account');

INSERT INTO categories (id, name, description) VALUES 
('75b402aa-79cd-48f3-9b1c-5aca48a5f1d4', 'Food', 'Groceries, restaurants, etc.'),
('52498827-b079-4508-92be-99b7ee681771', 'Transportation', 'Gas, bus, train, etc.'),
('7cefcd04-3697-469d-af49-ca7e1f2eb6c0', 'Housing', 'Rent, mortgage, etc.'),
('c5fbd0cc-e98f-4cc0-96c0-4dcf0a9d5828', 'Entertainment', 'Movies, games, etc.'),
('75541001-2552-43ae-a046-312c3da15a6b', 'Clothing', 'Clothes, shoes, etc.'),
('6efae379-10e9-4305-94a2-d6b09555e60a', 'Medical', 'Doctor, dentist, etc.');

INSERT INTO transactions (user_id, date, text, amount, account_id, category_id, fixed_cost, description) VALUES
('Re5Pbbfl0bxn12Uar7exGrDwsP9N', '2018-01-01', 'ICA', -300, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '75b402aa-79cd-48f3-9b1c-5aca48a5f1d4', false, 'Groceries'),
('Re5Pbbfl0bxn12Uar7exGrDwsP9N', '2018-01-04', 'OKQ8', -1539.81, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '52498827-b079-4508-92be-99b7ee681771', false, 'Gas'),
('Re5Pbbfl0bxn12Uar7exGrDwsP9N', '2018-01-08', 'CHALMERS STUD', -6000, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '7cefcd04-3697-469d-af49-ca7e1f2eb6c0', true, 'Rent'),
('Re5Pbbfl0bxn12Uar7exGrDwsP9N', '2018-01-25', 'SALARY', 25000, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '7cefcd04-3697-469d-af49-ca7e1f2eb6c0', true, 'Rent'),
('Re5Pbbfl0bxn12Uar7exGrDwsP9N', '2018-01-28', 'UEAB', -831.74, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '7cefcd04-3697-469d-af49-ca7e1f2eb6c0', true, 'Electricity');
