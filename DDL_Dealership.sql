CREATE TABLE salesperson(
	SP_ID SERIAL PRIMARY KEY,
	SP_Name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL
);

CREATE TABLE customer(
	Customer_ID SERIAL PRIMARY KEY,
	Customer_Name VARCHAR(50) NOT NULL,
	email VARCHAR(100), 
	address VARCHAR(100) 
);

CREATE TABLE car(
	Serial_Number VARCHAR(50) PRIMARY KEY,
	"Year" INTEGER NOT NULL,
	Make VARCHAR(50) NOT NULL, 
	Model VARCHAR(50) NOT NULL
	
);

CREATE TABLE invoice(
	Invoice_ID SERIAL PRIMARY KEY,
	Invoice_Date DATE NOT NULL,
	Serial_Number VARCHAR(50) NOT NULL, 
	FOREIGN KEY(Serial_Number) REFERENCES car(Serial_Number),
	Customer_ID INTEGER NOT NULL,
	FOREIGN KEY(Customer_ID) REFERENCES customer(Customer_ID),
	SP_ID INTEGER NOT NULL,
	FOREIGN KEY(SP_ID) REFERENCES salesperson(SP_ID)
	
);

CREATE TABLE Mechanic(
	Mechanic_ID SERIAL PRIMARY KEY,
	Mechanic VARCHAR(50) NOT NULL
);


CREATE TABLE service(
	Service_ID SERIAL PRIMARY KEY,
	Service_Date DATE NOT NULL,
	Ticket_Number INTEGER NOT NULL,
	Serial_Number VARCHAR(50) NOT NULL, 
	FOREIGN KEY(Serial_Number) REFERENCES car(Serial_Number),
	Customer_ID INTEGER NOT NULL,
	FOREIGN KEY(Customer_ID) REFERENCES customer(Customer_ID)
	
);


CREATE TABLE mechanic_service(
	Mechanic_ID INTEGER NOT NULL, 
	FOREIGN KEY(Mechanic_ID) REFERENCES Mechanic(Mechanic_ID),
	Service_ID INTEGER NOT NULL,
	FOREIGN KEY(Service_ID) REFERENCES service(Service_ID)
	
);