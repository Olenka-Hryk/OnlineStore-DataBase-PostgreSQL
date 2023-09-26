--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- 3 functions =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

-- PostgreSQL Scalar Function
CREATE OR REPLACE FUNCTION udfGetCustomerIDWithMostProductPurchases (
                            _ProductName varchar
                            , _OrderDate date DEFAULT TO_DATE(EXTRACT(YEAR FROM CURRENT_DATE)::text || '-01-01', 'YYYY-MM-DD'))
 RETURNS int
 LANGUAGE PLPGSQL
 AS 
$$
 DECLARE 
  result_CustomerID int;
 BEGIN
    SELECT customersOfSpecificProductPurchases."CustomerID"
    FROM (
	      SELECT
	          o."CustomerID",
	          g."ProductName",
	          SUM(scl."Quantity") AS totalQuantity
	      FROM "Orders" o
	       JOIN "ShoppingCartLines" scl ON o."OrderID" = scl."OrderID"
	       JOIN "Goods" g ON scl."GoodID" = g."GoodID"
	      WHERE g."ProductName" = _ProductName AND o."OrderDate" >= _OrderDate
	      GROUP BY
	          o."CustomerID",
	          g."ProductName"
        ) AS customersOfSpecificProductPurchases
    ORDER BY customersOfSpecificProductPurchases.totalQuantity DESC
    LIMIT 1
    INTO result_CustomerID;
    RETURN result_CustomerID;
 END;
$$

-- TEST
SELECT * FROM udfGetCustomerIDWithMostProductPurchases ('Jacksons Seeded Bloomer');
SELECT * FROM udfGetCustomerIDWithMostProductPurchases ('Jacksons Seeded Bloomer', '2020-01-01');

CREATE OR REPLACE FUNCTION udfShowCustomerInfoWithMostProductPurchases (
                            _ProductName varchar
                            , _OrderDate date DEFAULT TO_DATE(EXTRACT(YEAR FROM CURRENT_DATE)::text || '-01-01', 'YYYY-MM-DD'))
 RETURNS TABLE ("ID Customer" int, "First Name" bpchar(50), "Last Name" bpchar(50), "Email" varchar(320), "Phone" varchar(20))
 LANGUAGE PLPGSQL
 AS 
$$
 BEGIN
 	RETURN QUERY (
		SELECT c."CustomerID" AS "ID Customer"
		, c."FirstName" AS "First Name"
		, c."LastName" AS "Last Name"
		, c."Email" 
		, c."Phone"
		FROM "Customers" c 
		 WHERE c."CustomerID" = (
		   SELECT * FROM udfGetCustomerIDWithMostProductPurchases (_ProductName, _OrderDate)
		 )
	);
 END;
$$

SELECT * FROM udfShowCustomerInfoWithMostProductPurchases ('Jacksons Seeded Bloomer');
SELECT * FROM udfShowCustomerInfoWithMostProductPurchases ('Jacksons Seeded Bloomer', '2020-01-01');
	  



-- PostgreSQL Table-valued Function (Return composite type)
CREATE TYPE infoCustomersWithNonHomeAddressOrders
 AS
  ( "Order Date" date
  , "First Name" bpchar(50)
  , "Last Name" bpchar(50)
  , "Phone" varchar(20)
  , "Home Address" varchar(120)
  , "Delivery Address" bpchar(100)
  );

CREATE OR REPLACE FUNCTION udfFindCustomersWithNonHomeAddressOrdersByDate (
                             _FromDate date
                             , _ToDate date DEFAULT CURRENT_DATE)
 RETURNS SETOF infoCustomersWithNonHomeAddressOrders
 LANGUAGE PLPGSQL
 AS
$$
 BEGIN 
 	RETURN QUERY (
		SELECT o."OrderDate" AS "Order Date"
		, c."FirstName" AS "First Name"
		, c."LastName" AS "Last Name"
		, c."Phone" AS "Phone"
		, c."Address" AS "Home Address"
		, o."OrderDeliveryAddress" AS "Delivery Address"
		FROM "Customers" c
		JOIN "Orders" o ON c."CustomerID" = o."CustomerID"
		WHERE c."Address" <> o."OrderDeliveryAddress" AND o."OrderDate" BETWEEN _FromDate AND _ToDate
		ORDER BY o."OrderDate" ASC
 	);
 END;
$$

-- TEST
SELECT * FROM udfFindCustomersWithNonHomeAddressOrdersByDate ('2020-05-01');
SELECT * FROM udfFindCustomersWithNonHomeAddressOrdersByDate ('2020-05-01', '2022-12-30');




-- PostgreSQL Table-valued Function (Return table type) 
CREATE OR REPLACE FUNCTION udfPeopleSearchByKeyword(_keyword varchar)
RETURNS TABLE(
	"First Name" bpchar(50),
	"Last Name" bpchar(50),
	"Birth Date" date,
	"Phone" varchar(20),
	"Email" varchar(320),
	"BelongsTo & ID" varchar(9)
)
LANGUAGE PLPGSQL
AS
$$
BEGIN
	RETURN QUERY 
	SELECT
		e."FirstName" ,
		e."LastName" , 
		e."BirthDate" ,
		e."Phone",
		e."Email",
		('EmployeeID = '||e."EmployeeID")::varchar
	FROM "Employees" e
	WHERE e."FirstName" || e."LastName" || e."Phone" || e."Email" || e."BirthDate" ILIKE '%'||_keyword||'%'
	UNION 
	SELECT
		c."FirstName" ,
		c."LastName",
		c."BirthDate" ,
		c."Phone",
		c."Email",
		('CustomerID = '||c."CustomerID")::varchar
	FROM "Customers" c
	WHERE c."FirstName" || c."LastName" || c."Phone" || c."Email" || c."BirthDate" ILIKE '%'||_keyword||'%';
END;
$$

-- TEST
SELECT * FROM udfPeopleSearchByKeyword('va');
SELECT * FROM udfPeopleSearchByKeyword('1997');