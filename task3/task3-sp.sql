CREATE PROCEDURE TASK3

AS
BEGIN
	CREATE TABLE phone (
		id INT PRIMARY KEY IDENTITY(1, 1),
		dial_number NVARCHAR(20) NOT NULL,
	)

	CREATE TABLE called_phone (
		id INT PRIMARY KEY IDENTITY(1, 1),
		phone_id int FOREIGN KEY REFERENCES phone(id) NOT NULL,
		cost int,
		call_status NVARCHAR(10),
		CONSTRAINT check_cost CHECK (cost BETWEEN 1 AND 20),
		CONSTRAINT check_call_status_options CHECK (call_status IN ('called', 'caller'))
	)

	INSERT INTO phone (dial_number) VALUES ('09100768572')
	INSERT INTO phone (dial_number) VALUES ('09124561001')
	INSERT INTO phone (dial_number) VALUES ('09194511157')
	INSERT INTO phone (dial_number) VALUES ('09154566487')
	INSERT INTO phone (dial_number) VALUES ('09120477721')
	INSERT INTO phone (dial_number) VALUES ('09012323345')
	INSERT INTO phone (dial_number) VALUES ('09135577676')
	INSERT INTO phone (dial_number) VALUES ('09100498677')
	INSERT INTO phone (dial_number) VALUES ('09158238888')
	INSERT INTO phone (dial_number) VALUES ('09129578556')

	INSERT INTO called_phone (phone_id, cost, call_status) VALUES (1, 5, 'called')
	INSERT INTO called_phone (phone_id, cost, call_status) VALUES (5, 15, 'called')
	INSERT INTO called_phone (phone_id, cost, call_status) VALUES (2, 2, 'caller')
	INSERT INTO called_phone (phone_id, cost, call_status) VALUES (5, 20, 'called')
	INSERT INTO called_phone (phone_id, cost, call_status) VALUES (1, 12, 'caller')
	INSERT INTO called_phone (phone_id, cost, call_status) VALUES (7, 1, 'caller')
	INSERT INTO called_phone (phone_id, cost, call_status) VALUES (7, 6, 'called')
	INSERT INTO called_phone (phone_id, cost, call_status) VALUES (2, 8, 'caller')
	INSERT INTO called_phone (phone_id, cost, call_status) VALUES (3, 10, 'called')
	INSERT INTO called_phone (phone_id, cost, call_status) VALUES (4, 11, 'called')
	INSERT INTO called_phone (phone_id, cost, call_status) VALUES (6, 8, 'caller')

	SELECT * FROM called_phone
	WHERE call_status = 'called'


END
GO
