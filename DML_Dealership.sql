CREATE OR REPLACE PROCEDURE add_salesperson(SP_name VARCHAR, email VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO salesperson(SP_name, email)
	VALUES (SP_name, email);
END;
$$;

CALL add_salesperson('John Thomas', 'jthomas@dealersrus.com');
CALL add_salesperson('Megan Lewis', 'mlewis@dealersrus.com');

CREATE OR REPLACE PROCEDURE add_mech(Mechanic VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO Mechanic(Mechanic)
	VALUES (Mechanic);
END;
$$;

CALL add_mech('Donnie Mitchell');
CALL add_mech('Louise Johnson');
CALL add_mech('Sal Bentley');

CREATE OR REPLACE PROCEDURE add_customer(Customer_Name VARCHAR, email VARCHAR, address VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO customer(Customer_Name, email, address)
	VALUES (Customer_Name, email, address);
END;
$$;

CALL add_customer('Bill Denson', 'bigden456@yahoo.com', '123 Spot Ave');
CALL add_customer('Gwen Hammond', 'ghamburger@gmail.com', '45 Cross St. Apt. 1');

CREATE OR REPLACE PROCEDURE add_car(Serial_Number VARCHAR, Year Integer, Make VARCHAR, Model VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO car(Serial_Number, "Year", Make, Model)
	VALUES (Serial_Number, Year, Make, Model);
END;
$$;

CALL add_car('V132400', 2015, 'Honda', 'Civic'); 
CALL add_car('R178921', 2022, 'Ford', 'F150');
CALL add_car('Q891011', 2018, 'Mazda', '3');

CREATE OR REPLACE PROCEDURE add_invoice(Invoice_Date DATE, Serial_Number VARCHAR, Customer_ID INTEGER, SP_ID INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO invoice(Invoice_Date, Serial_Number, Customer_ID, SP_ID)
	VALUES (Invoice_Date, Serial_Number, Customer_ID, SP_ID);
END;
$$;

CALL add_invoice('2019-03-05', 'V132400', 2, 2);
CALL add_invoice('2020-07-15', 'R178921', 1, 1);
CALL add_invoice('2022-10-11', 'Q891011', 1, 2);

CREATE OR REPLACE PROCEDURE add_service(Service_Date DATE, Ticket_Number INTEGER, Serial_Number VARCHAR, Customer_ID INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO service(Service_Date, Ticket_Number, Serial_Number, Customer_ID)
	VALUES (Service_Date, Ticket_Number, Serial_Number, Customer_ID);
END;
$$;


CALL add_service('2022-12-20', 1480, 'R178921', 1);
CALL add_service('2020-08-22', 1010, 'V132400', 2);

CREATE OR REPLACE PROCEDURE add_sm(Mechanic_ID INTEGER, Service_ID INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO mechanic_service(Mechanic_ID, Service_ID)
	VALUES (Mechanic_ID , Service_ID);
END;
$$;

CALL add_sm(1, 1);
CALL add_sm(2, 1);
CALL add_sm(3, 2);
CALL add_sm(2, 2);
