INSERT INTO users (id) VALUES('xqHOZZHYL5UtDU2VCcuMdjLMWX13');

INSERT INTO accounts (id, user_id, name, description) VALUES ('68db8db3-122b-4657-9ba8-51cc60f6d7e9', 'xqHOZZHYL5UtDU2VCcuMdjLMWX13', 'Savings', 'Savings account');

INSERT INTO categories (id, name, description) VALUES 
('75b402aa-79cd-48f3-9b1c-5aca48a5f1d4', 'Food', 'Groceries, restaurants, etc.'),
('52498827-b079-4508-92be-99b7ee681771', 'Transportation', 'Gas, bus, train, etc.'),
('7cefcd04-3697-469d-af49-ca7e1f2eb6c0', 'Housing', 'Rent, mortgage, etc.'),
('c5fbd0cc-e98f-4cc0-96c0-4dcf0a9d5828', 'Entertainment', 'Movies, games, etc.'),
('75541001-2552-43ae-a046-312c3da15a6b', 'Clothing', 'Clothes, shoes, etc.'),
('f0c67ed7-b1c2-48a0-8dc8-18c802841082', 'Salary', 'Income from work'),
('6efae379-10e9-4305-94a2-d6b09555e60a', 'Medical', 'Doctor, dentist, etc.');

INSERT INTO transactions (user_id, date, text, amount, account_id, category_id, fixed_cost, description) VALUES
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-02-01', 'ICA', -300, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '75b402aa-79cd-48f3-9b1c-5aca48a5f1d4', false, 'Groceries'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-02-04', 'OKQ8', -1539.81, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '52498827-b079-4508-92be-99b7ee681771', false, 'Gas'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-02-08', 'CHALMERS STUD', -6000, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '7cefcd04-3697-469d-af49-ca7e1f2eb6c0', true, 'Apartment rent'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-02-25', 'SALARY', 25000, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', 'f0c67ed7-b1c2-48a0-8dc8-18c802841082', true, null),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-02-28', 'UEAB', -831.74, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '7cefcd04-3697-469d-af49-ca7e1f2eb6c0', true, 'Electricity'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-03-02', 'ICA', -602, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '75b402aa-79cd-48f3-9b1c-5aca48a5f1d4', false, 'Groceries'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-03-06', 'ST1', -2589.12, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '52498827-b079-4508-92be-99b7ee681771', false, 'Gas'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-03-12', 'CHALMERS STUD', -6500, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '7cefcd04-3697-469d-af49-ca7e1f2eb6c0', true, 'Rent'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-03-21', 'UEAB', -1250, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '7cefcd04-3697-469d-af49-ca7e1f2eb6c0', true, 'Electricity'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-03-25', 'SALARY', 18000, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', 'f0c67ed7-b1c2-48a0-8dc8-18c802841082', true, null),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-03-23', 'KRAKANS KROG', -126, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', 'c5fbd0cc-e98f-4cc0-96c0-4dcf0a9d5828', false, 'After work beer'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-04-02', 'ICA', -405.75, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '75b402aa-79cd-48f3-9b1c-5aca48a5f1d4', false, 'Groceries'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-04-07', 'OKQ8', -1325.64, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '52498827-b079-4508-92be-99b7ee681771', false, 'Gas'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-04-15', 'CHALMERS STUD', -6000, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '7cefcd04-3697-469d-af49-ca7e1f2eb6c0', true, 'Rent'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-04-28', 'SALARY', 25000, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', 'f0c67ed7-b1c2-48a0-8dc8-18c802841082', true, null),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-04-30', 'UEAB', -792.15, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '7cefcd04-3697-469d-af49-ca7e1f2eb6c0', true, 'Electricity'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-05-04', 'ICA', -512.90, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '75b402aa-79cd-48f3-9b1c-5aca48a5f1d4', false, 'Groceries'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-05-08', 'ST1', -2014.37, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '52498827-b079-4508-92be-99b7ee681771', false, 'Gas'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-05-12', 'CHALMERS STUD', -6500, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '7cefcd04-3697-469d-af49-ca7e1f2eb6c0', true, 'Rent'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-05-21', 'UEAB', -1180.50, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '7cefcd04-3697-469d-af49-ca7e1f2eb6c0', true, 'Electricity'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-05-25', 'SALARY', 18000, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', 'f0c67ed7-b1c2-48a0-8dc8-18c802841082', true, null),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-05-27', 'KRAKANS KROG', -95.50, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', 'c5fbd0cc-e98f-4cc0-96c0-4dcf0a9d5828', false, 'After work beer'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-06-01', 'Supermarket', -250, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '75b402aa-79cd-48f3-9b1c-5aca48a5f1d4', false, 'Groceries'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-06-04', 'Gas Station', -48.50, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '52498827-b079-4508-92be-99b7ee681771', false, 'Fuel'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-06-10', 'Rent Payment', -6000, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '7cefcd04-3697-469d-af49-ca7e1f2eb6c0', true, 'Monthly rent'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-06-15', 'Salary', 25000, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', 'f0c67ed7-b1c2-48a0-8dc8-18c802841082', true, null),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-06-18', 'Electricity Bill', -120, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '7cefcd04-3697-469d-af49-ca7e1f2eb6c0', true, 'Utility bill'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-06-22', 'Clothing Store', -89.99, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '75541001-2552-43ae-a046-312c3da15a6b', false, 'New shirt'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-06-26', 'Restaurant', -65.75, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '75b402aa-79cd-48f3-9b1c-5aca48a5f1d4', false, 'Dinner with friends'),
('xqHOZZHYL5UtDU2VCcuMdjLMWX13', '2024-06-29', 'Pharmacy', -45.20, '68db8db3-122b-4657-9ba8-51cc60f6d7e9', '6efae379-10e9-4305-94a2-d6b09555e60a', false, 'Prescription medication');



