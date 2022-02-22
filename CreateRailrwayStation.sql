CREATE DATABASE [Railway_station]
GO


USE [Railway_station]

CREATE TABLE [Railway_station_workers] (
	[Railway_station_workers_number]		INT					PRIMARY KEY,
	[Surname]								NVARCHAR(40)		NOT NULL,
	[Name]									NVARCHAR(40)		NOT NULL,
	[Patronymic]							NVARCHAR(40)		NULL,
	[Date_of_birth]							DATE				NOT NULL,
	[Date_of_admission_to_work]				DATE				NOT NULL,
	[Experience]							NVARCHAR(15)		NULL,
	[Post]									NVARCHAR(25)		NOT NULL,
	[Gender]								NVARCHAR(1)			NOT NULL,
	[Address]								NVARCHAR(120)		NOT NULL,
	[City]									NVARCHAR(40)		NOT NULL,
	[Phone_number]							NVARCHAR(20)		NOT NULL
);

CREATE TABLE [Trains] (
	[Train_number]							INT					PRIMARY KEY,
	[Year_of_release]						NVARCHAR(5)			NOT NULL,
	[Number_of_wagons]						INT					NOT NULL,
	[Type_of_train]							NVARCHAR(25)		NOT NULL
);

CREATE TABLE [Train_timetable] (
	[Flight_number]							INT					PRIMARY KEY,
	[Train]									INT					FOREIGN KEY REFERENCES [Trains]([Train_number])										NOT NULL,
	[Departure_date_and_time]				DATETIME			NOT NULL,
	[Place_of_departure]					NVARCHAR(120)		NOT NULL,
	[Place_of_arrival]						NVARCHAR(120)		NOT NULL,
	[Route]									NVARCHAR(120)		NOT NULL,
	[Ticket_price]							DECIMAL(10,2)		NOT NULL
);

CREATE TABLE [Train_crews] (
	[Crew_number]							INT					PRIMARY KEY,
	[Train]									INT					FOREIGN KEY REFERENCES [Trains]([Train_number])										NOT NULL,
	[Railway_station_workers]				INT					FOREIGN KEY REFERENCES [Railway_station_workers]([Railway_station_workers_number])	NOT NULL
);

CREATE TABLE [Ticket_sales_statement](
[Ticket_sales_statement_number]				INT					PRIMARY KEY,
[Date_and_time_of_sale]						DATETIME			NOT NULL,
[Passenger's_full_name]						NVARCHAR(120)		NOT NULL,
[Passport_data]								NVARCHAR(11)		NOT NULL,
[Flight_number]								INT					FOREIGN KEY REFERENCES [Train_timetable]([Flight_number])							NOT NULL,
[Number_of_tickets]							INT					NOT NULL,
[Availability_of_benefits]					NVARCHAR(25)		NULL,
[Baggage]									NVARCHAR(3)			NOT NULL,
[Cost]										DECIMAL(10,2)		NOT NULL
);
