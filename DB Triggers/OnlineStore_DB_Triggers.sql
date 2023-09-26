--=-=-=-=-=-=-=-=-=-=-=-=-=-= 3 queries for the creation of DML triggers =-=-=-=-=-=-=-=-=-=-=-=-=-=

-- Trigger on INSERT
CREATE TABLE "SubscribersList" ("ID" INT GENERATED ALWAYS AS IDENTITY, "CustomerID" int NOT NULL, "FirstName" bpchar NOT NULL, "LastName" bpchar NOT NULL, "Phone" varchar NOT NULL, "Email" VARCHAR);

CREATE OR REPLACE FUNCTION log_new_customers()
RETURNS TRIGGER 
LANGUAGE PLPGSQL
AS
$$
BEGIN
	INSERT INTO public."SubscribersList"
	("CustomerID", "FirstName", "LastName", "Phone", "Email") values
	(NEW."CustomerID", NEW."FirstName", NEW."LastName", new."Phone", 
	CASE 
		WHEN NEW."EmailVerified" <> '1' THEN NULL
		WHEN NEW."EmailVerified" = '1' THEN NEW."Email"
	END);
	RETURN NEW;
END;
$$

CREATE TRIGGER new_customer_insert
AFTER INSERT 
ON public."Customers"
FOR EACH ROW
EXECUTE PROCEDURE log_new_customers();

-- TEST
INSERT INTO "Customers"
VALUES (nextval('"Customers_CustomerID_seq"'::regclass), '1', 'Petrovych', 'Petro', 'Petryk', '1990-11-11', '+380671234567', 'petryk@gmail.com', null, '01234', 'Bratyslavska st.', 'Kyiv', 'Kyiv', 'Ukraine', '2022-09-01', '0'),
(nextval('"Customers_CustomerID_seq"'::regclass), '2', 'Pavlivna', 'Iryna', 'Petrychuk', '1980-12-10', '+380672345678', 'petrychuk@gmail.com', null, '02345', 'Zhukovskogo st.', 'Dnipro', 'Dnipro', 'Ukraine', '2021-08-11', '1'),
(nextval('"Customers_CustomerID_seq"'::regclass), '3', 'Myhaylovych', 'Valerii', 'Pavlyk', '1987-04-11', '+380501234567', 'pavlyk@gmail.com', null, '03134', 'Dekabrystiv st.', 'Kyiv', 'Kyiv', 'Ukraine', '2020-07-01', '0');

SELECT * FROM "SubscribersList" s;



-- Trigger on UPDATE 
CREATE TABLE logsUpdatedProductPrices ("logID" serial, "DateOfUpdate" timestamp, "ProductID" int, "ProductName" varchar, "OldPrice" money, "NewPrice" money);

CREATE OR REPLACE FUNCTION udf_tg_UpdateProductPrice ()
RETURNS TRIGGER 
 LANGUAGE PLPGSQL
 AS 
$$
 BEGIN
    IF OLD."UnitPrice" <> NEW."UnitPrice" 
    THEN
      INSERT INTO logsUpdatedProductPrices("DateOfUpdate", "ProductID", "ProductName", "OldPrice", "NewPrice")
      VALUES (now(), OLD."GoodID", OLD."ProductName", OLD."UnitPrice", NEW."UnitPrice");
    END IF;
   RETURN NEW;
 END;
$$

CREATE TRIGGER tgOnUpdateProductPrice
AFTER UPDATE ON "Goods"
FOR EACH ROW EXECUTE FUNCTION udf_tg_UpdateProductPrice ()

-- TEST
SELECT * FROM "Goods" g;

INSERT INTO "Goods" ("GoodID", "CategoryID", "UnitOfMeasurement", "ProductName", "UnitPrice", "Description", "Weight", "GoodLength", "GoodWidth", "GoodHeight", "IsAvailable", "Picture") 
VALUES (nextval('"Goods_GoodID_seq"'::regclass), 5, 'Test product', 'Test product', 0, 'Test product', 0, NULL, NULL, NULL, '1', NULL);

UPDATE "Goods"
SET "UnitPrice" = 100
WHERE "GoodID" = 11;

SELECT * FROM logsUpdatedProductPrices;
SELECT * FROM "Goods";





-- Trigger on DELETE
CREATE TABLE logsDeletedProducts ("logID" serial, "DateOfDeletion" timestamp, "DeletedProductName" varchar, "UserName" varchar);

CREATE OR REPLACE FUNCTION udf_tg_DeleteProduct ()
 RETURNS TRIGGER 
 LANGUAGE PLPGSQL
 AS 
$$
 BEGIN
    INSERT INTO logsDeletedProducts("DateOfDeletion", "DeletedProductName", "UserName")
    VALUES (now(), OLD."ProductName", USER);
   RETURN NEW;
 END;
$$

CREATE TRIGGER tgOnDeleteProduct
AFTER DELETE ON "Goods"
FOR EACH ROW EXECUTE FUNCTION udf_tg_DeleteProduct ()


-- TEST
SELECT * FROM "Goods" g;

INSERT INTO "Goods" ("GoodID", "CategoryID", "UnitOfMeasurement", "ProductName", "UnitPrice", "Description", "Weight", "GoodLength", "GoodWidth", "GoodHeight", "IsAvailable", "Picture") 
VALUES (nextval('"Goods_GoodID_seq"'::regclass), 5, 'Test product', 'Test product', 0, 'Test product', 0, NULL, NULL, NULL, '1', NULL);

DELETE FROM "Goods" g
WHERE g."GoodID" = 12;

SELECT * FROM logsDeletedProducts;
SELECT * FROM "Goods";


