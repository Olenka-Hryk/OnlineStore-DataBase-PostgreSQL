-- VIEW horizontal
CREATE OR REPLACE VIEW "orders_with_purchasestatus_completed"
AS
SELECT * FROM "ShoppingCartLines"
WHERE "PurchaseStatus" = 'Completed';

SELECT * FROM "orders_with_purchasestatus_completed";


-- VIEW vertical
CREATE VIEW vertical_view
AS
SELECT e."FirstName",
e."LastName",
e."Phone",
e."Email"
FROM "Employees" e;

SELECT * from vertical_view;


-- VIEW mixed
CREATE OR REPLACE VIEW "employees_younger_then_40"
AS
SELECT e."FirstName", e."LastName", e."BirthDate"  
FROM "Employees" e 
WHERE e."BirthDate" < (CURRENT_DATE - INTERVAL '40 years'); 

SELECT * FROM "employees_younger_then_40";


-- VIEW with joining
CREATE OR REPLACE VIEW "orders_with_details"
AS
SELECT o."OrderID", o."OrderDate", c."FirstName", c."LastName", dc."DeliveryCompanyName" 
FROM "Orders" o, "Customers" c, "DeliveryCompanies" dc
WHERE o."DeliveryCompanyID" = dc."DeliveryCompanyID" 
AND o."CustomerID" = c."CustomerID";

SELECT * FROM "orders_with_details";


-- VIEW with subquery
CREATE OR REPLACE VIEW "orders_with_products_of_specific_categoryname"
AS
SELECT scl."OrderID"
, o."OrderDate" 
FROM "ShoppingCartLines" scl 
JOIN "Orders" o ON scl."OrderID" = o."OrderID" 
WHERE scl."GoodID" IN 
(
	(SELECT "GoodID" 
	FROM "Goods"
	WHERE "CategoryID" IN 
		(SELECT "CategoryID"
		FROM "Categories"
		WHERE "CategoryName" LIKE 'C%' OR "CategoryName" LIKE 'B%'
		)
	)
)
ORDER BY o."OrderDate" ASC;

SELECT * FROM "orders_with_products_of_specific_categoryname";


-- VIEW with the union 
CREATE VIEW view_with_union
AS
SELECT c."FirstName",
c."LastName",
c."Email",
'Customer' AS BelongsTo
FROM "Customers" c 
UNION
SELECT e."FirstName",
e."LastName",
e."Email",
'Employee' AS BelongsTo
FROM "Employees" e;

SELECT * FROM view_with_union;


-- VIEW view on the select from another one view
-- ver 1
CREATE VIEW on_another_one_view
AS
SELECT * FROM view_with_union;

SELECT * FROM on_another_one_view;

--ver 2
CREATE VIEW count_good_in_group
AS
SELECT c."CategoryID",
c."CategoryName",
COUNT(*) AS TotalCountInGroup
FROM "Goods" g
INNER JOIN "Categories" c ON
c."CategoryID"  = g."CategoryID"
WHERE g."IsAvailable" = '1'
GROUP BY c."CategoryID"
ORDER BY 3 DESC;

CREATE VIEW on_another_one_view_v2
AS
SELECT * FROM count_good_in_group;

SELECT * FROM on_another_one_view_v2;


-- VIEW view with check option
CREATE OR REPLACE VIEW "orders_unpaid"
AS
SELECT *
FROM "Orders" o 
WHERE o."Payment" = FALSE AND o."OrderDate" > '2022-01-01'
WITH CHECK OPTION;

SELECT * FROM "orders_unpaid";

UPDATE "orders_unpaid"
SET "Payment" = FALSE  
WHERE "OrderID" = 37; --Updated Rows 0, cos OrderID 37 doesn't exist in view

INSERT INTO "orders_unpaid"
VALUES (43, 4, 4, 4, '2020-02-24', 'Bandera st.', '59000652659593', TRUE); --ERROR: new row violates check option for view "orders_unpaid"

INSERT INTO "orders_unpaid"
VALUES (43, 4, 4, 4, '2023-02-24', 'Bandera st.', '59000652659593', FALSE); --Updated Rows 1, success

SELECT * FROM "Orders";

DELETE FROM "Orders"
WHERE "OrderID" = 43;