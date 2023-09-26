--=-=-=-=-=-=-=-=-=-=-=-=-=- 2 stored procedures with SELECT statement =-=-=-=-=-=-=-=-=-=-=-=-=-

-- First SP SELECT statement:
CREATE OR REPLACE PROCEDURE spGetDeliveredOrderCountByDeliveryCompanyBetweenDates (
                              _DeliveryCompanyName bpchar(50)
                              , _FromDate date
                              , _ToDate date DEFAULT CURRENT_DATE)
 LANGUAGE PLPGSQL
 AS
$$
 DECLARE 
  result_countDeliveredOrders int;
 BEGIN 
		SELECT count(scl."PurchaseStatus")
		FROM "ShoppingCartLines" scl
		JOIN "Orders" o ON scl."OrderID" = o."OrderID" 
		JOIN "DeliveryCompanies" dc ON o."DeliveryCompanyID" = dc."DeliveryCompanyID" 		
		WHERE dc."DeliveryCompanyName" = _DeliveryCompanyName 
		      AND scl."PurchaseStatus" = 'Completed'
		      AND o."OrderDate" BETWEEN _FromDate AND _ToDate
		GROUP BY scl."PurchaseStatus"
	INTO result_countDeliveredOrders;
	RAISE NOTICE 'The number of delivered orders by % company during the period from % to %: %', _DeliveryCompanyName, _FromDate, _ToDate, result_countDeliveredOrders;
 END;
$$

-- TEST
CALL spGetDeliveredOrderCountByDeliveryCompanyBetweenDates ('Autolux', '2020-01-01');
CALL spGetDeliveredOrderCountByDeliveryCompanyBetweenDates ('NovaPoshta', '2020-01-01', '2023-01-01');




-- Second SP SELECT statement:
CREATE OR REPLACE PROCEDURE spGetEmployeePaidOrdersCountAndEmployeeNameByEmployeeID(
															inout _CountOrders int,
															inout _EmployeeName varchar default '')
LANGUAGE PLPGSQL
AS
$$
BEGIN 
		SELECT COUNT(e."EmployeeID"),
		e."FirstName" || ' ' ||  e."LastName"
		INTO _CountOrders, 
		_EmployeeName
		FROM "Employees" e
		JOIN "Orders" o ON o."EmployeeID" = _CountOrders AND o."Payment" = TRUE
		WHERE e."EmployeeID" = _CountOrders
		GROUP BY e."EmployeeID";
END;
$$

CALL spGetEmployeePaidOrdersCountAndEmployeeNameByEmployeeID(6);
CALL spGetEmployeePaidOrdersCountAndEmployeeNameByEmployeeID(8);



--=-=-=-=-=-=-=-=-=-=-=-=-=- 2 stored procedures with INSERT statement =-=-=-=-=-=-=-=-=-=-=-=-=-

-- First SP INSERT statement:
-------- Creation of a product availability check function:
CREATE OR REPLACE FUNCTION udfCheckProductAvailability (
                              _ProductName varchar)
 RETURNS boolean
 LANGUAGE PLPGSQL
 AS 
$$
 DECLARE 
  result_isAvailable boolean;
 BEGIN
		SELECT g."IsAvailable"
        FROM "Goods" g
        WHERE g."ProductName" = _ProductName
	INTO result_isAvailable;
    RETURN result_isAvailable;
 END;
$$

-------- TEST
SELECT * FROM udfCheckProductAvailability ('Jacksons Seeded Bloomer');


CREATE OR REPLACE PROCEDURE spCreateOrder (
                              _CustomerFirstName bpchar(50)
                              , _CustomerLastName bpchar(50)
                              , _CustomerPatronymicName bpchar(50)
                              , _DeliveryCompanyName bpchar(50)
                              , _DeliveryAddress bpchar(100)
                              , _Payment bool
                              , _ProductName varchar
                              , _Quantity int
                              , _IsInCart bool
                              , _PurchaseStatus bpchar(50)
                              , _EmployeeFirstName bpchar(50)
                              , _EmployeeLastName bpchar(50))
 LANGUAGE PLPGSQL
 AS
$$
 DECLARE 
  new_id1 int;
  new_id2 int;
 BEGIN 
	  IF udfCheckProductAvailability (_ProductName)
	  THEN 
		INSERT INTO "Orders" ("OrderID", "CustomerID", "EmployeeID", "DeliveryCompanyID", "OrderDate", "OrderDeliveryAddress", "OrderTrackingNumber", "Payment")
		VALUES (
		     nextval('"Orders_OrderID_seq"'::regclass)
		    , (SELECT c."CustomerID"
		       FROM "Customers" c
		       WHERE c."FirstName" = _CustomerFirstName AND c."LastName" = _CustomerLastName AND c."PatronymicName" = _CustomerPatronymicName
		      )
		    , (SELECT e."EmployeeID"
		       FROM "Employees" e
		       WHERE e."FirstName" = _EmployeeFirstName AND e."LastName" = _EmployeeLastName
		      )
		    , (SELECT d."DeliveryCompanyID"
		       FROM "DeliveryCompanies" d
		       WHERE d."DeliveryCompanyName" = _DeliveryCompanyName
		      )
		    , now()
		    , _DeliveryAddress
		    , (SELECT '59000' || lpad(floor(random() * 100000000)::TEXT, 9, '0'))
		    , _Payment
		  )
		 RETURNING "OrderID" INTO new_id1;
		
		 
		 INSERT INTO "ShoppingCartLines" ("ShoppingCartLineID", "OrderID", "GoodID", "Quantity", "UnitPrice", "TotalPrice", "IsInCart", "PurchaseStatus")
		 VALUES (
		     nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass)
		     , new_id1
		     , (SELECT g."GoodID"
		        FROM "Goods" g
		        WHERE g."ProductName" = _ProductName
		       )
		     , _Quantity
		     , (SELECT g."UnitPrice"
		        FROM "Goods" g
		        WHERE g."ProductName" = _ProductName
		       )
		     , (SELECT SUM(_Quantity * g."UnitPrice")
		        FROM "Goods" g
		        WHERE g."ProductName" = _ProductName
		       )
		     , _IsInCart
		     , _PurchaseStatus
		 )
		RETURNING "ShoppingCartLineID" INTO new_id2;
	RAISE NOTICE 'The order was added to the database under id: %', new_id1;
    ELSE
        RAISE NOTICE 'REFUSAL: It"s not possible to create an order because this product isn"t in stock!';
   END IF;
 END;
$$

-- TEST
CALL spCreateOrder ('Anna', 'Stoyan', 'Petrova', 'Meest Express', 'Khotkevycha st.', TRUE, 'Frisco Coffee 750G', '3', TRUE, 'Shipped', 'Elias', 'Christiansen');
CALL spCreateOrder ('Viktor', 'Gudimenko', 'Viktorovych', 'NovaPoshta', 'Balabana st.', FALSE, 'Jacksons Seeded Bloomer', '10', TRUE, 'Shipped', 'Banu', 'Verduin');

SELECT * FROM "Orders";
SELECT * FROM "ShoppingCartLines";


-- Second SP INSERT statement:
CREATE OR REPLACE PROCEDURE spHireCustomer(_CustomerID int, _RoleID int)
LANGUAGE PLPGSQL
AS $$
DECLARE
	current_row RECORD;
BEGIN
	SELECT * INTO current_row 
	FROM "Customers" c
	WHERE c."CustomerID" = _CustomerID;
	INSERT INTO public."Employees" ("EmployeeID", "RoleID", "FirstName", "LastName", "BirthDate", "Phone", "Email", "Photo", "Address", "City", "Region", "Country", "HireDate", "Rate")
	VALUES (
		nextval('"Employees_EmployeeID_seq"'::regclass),
		1,
		current_row."FirstName",
		current_row."LastName",
		current_row."BirthDate",
		current_row."Phone",
		current_row."Email",
		current_row."Photo",
		current_row."Address",
		current_row."City",
		current_row."Region",
		current_row."Country",
		CURRENT_DATE,
		0
	);
END;
$$

-- TEST
CALL spHireCustomer(2, 2);
CALL spHireCustomer(5, 3);

SELECT * FROM "Employees" e;