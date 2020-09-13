Create Database PetStoreEDW1;
Use PetStoreEDW1;

Create Table DimSupply(SupplyID int not null,
						SupplyName Nvarchar(100),
						Phone Nvarchar(50),
						ContactName Nvarchar(100),
						SupplyAddress Nvarchar(50),
						ZipCode Nvarchar(50),
						CityID int,
						AvgOrderDays real,
Constraint DimSupply_PK Primary Key(SupplyID));

Create Table DimMerchan(ItemID int not null,
						DesMerchan Nvarchar(50),
						QuantityOnHand int,
						ListPrice money,
						Category nvarchar(50),
Constraint DimMerchan_PK Primary Key(ItemID));


CREATE TABLE DimDate(Date Datetime, 
                      Year INT, 
					  Month INT, 
					  Day INT, 
					  WeekDayValue INT, 
					  MonthValueName VARCHAR(20),
					  WeekDayValueName VARCHAR(20),
CONSTRAINT DimDate_PK PRIMARY KEY (Date));

  DECLARE @StartDate DATE = '2001-01-01';
  DECLARE @EndDate DATE = '2001-12-31';
  WHILE @StartDate <= @EndDate
  BEGIN
	INSERT INTO  DimDate(Date,
	                     Year, 
						 Month, 
						 Day, 
						 WeekDayValue, 
						 MonthValueName,
						 WeekDayValueName )
	VALUES(@StartDate,
	        DATEPART(YY, @StartDate),
			DATEPART(mm, @StartDate),
			DATEPART(dd, @StartDate), 
			DATEPART(dw, @StartDate), 
			DATENAME(mm, @StartDate),
			DATENAME(dw, @StartDate))
	
	SET @StartDate = DATEADD(dd, 1, @StartDate)
  END;


