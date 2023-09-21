CREATE TABLE "Customers" (
	"CustomerID" serial NOT NULL UNIQUE,
	"Password" varchar(60) NOT NULL,
	"PatronymicName" char(50),
	"FirstName" char(50) NOT NULL,
	"LastName" char(50) NOT NULL,
	"BirthDate" DATE,
	"Phone" varchar(20) NOT NULL,
	"Email" varchar(320) NOT NULL,
	"Photo" bytea,
	"ZipCode" varchar(10) NOT NULL,
	"Address" varchar(120) NOT NULL,
	"City" varchar(100) NOT NULL,
	"Region" varchar(100) NOT NULL,
	"Country" varchar(100) NOT NULL,
	"RegistrationDate" DATE NOT NULL,
	"EmailVerified" bit NOT NULL,
	CONSTRAINT "Customers_pk" PRIMARY KEY ("CustomerID")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Goods" (
	"GoodID" serial NOT NULL UNIQUE,
	"CategoryID" int NOT NULL,
	"UnitOfMeasurement" char(16) NOT NULL,
	"ProductName" char(32) NOT NULL,
	"UnitPrice" DECIMAL(10) NOT NULL,
	"Description" char(320),
	"Weight" DECIMAL(5),
	"GoodLength" int,
	"GoodWidth" int,
	"GoodHeight" int,
	"IsAvailable" bit NOT NULL,
	"Picture" bytea,
	CONSTRAINT "Goods_pk" PRIMARY KEY ("GoodID")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Orders" (
	"OrderID" serial NOT NULL UNIQUE,
	"CustomerID" int NOT NULL,
	"EmployeeID" int NOT NULL,
	"DeliveryCompanyID" int NOT NULL,
	"OrderDate" DATE NOT NULL,
	"OrderDeliveryAddress" char(100) NOT NULL,
	"OrderTrackingNumber" char(80) NOT NULL,
	"Payment" bit NOT NULL,
	CONSTRAINT "Orders_pk" PRIMARY KEY ("OrderID")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "DeliveryCompanies" (
	"DeliveryCompanyID" serial NOT NULL UNIQUE,
	"DeliveryCompanyName" char(50) NOT NULL,
	"ContactPhone" varchar(20) NOT NULL,
	"Logo" bytea,
	CONSTRAINT "DeliveryCompanies_pk" PRIMARY KEY ("DeliveryCompanyID")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Categories" (
	"CategoryID" serial NOT NULL UNIQUE,
	"CategoryName" char(32) NOT NULL,
	"Description" char(150) NOT NULL,
	"Picture" bytea,
	CONSTRAINT "Categories_pk" PRIMARY KEY ("CategoryID")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Roles" (
	"RoleID" serial NOT NULL UNIQUE,
	"RoleName" char(32) NOT NULL,
	CONSTRAINT "Roles_pk" PRIMARY KEY ("RoleID")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Employees" (
	"EmployeeID" serial NOT NULL UNIQUE,
	"RoleID" int NOT NULL,
	"FirstName" char(50) NOT NULL,
	"LastName" char(50) NOT NULL,
	"BirthDate" DATE NOT NULL,
	"Phone" varchar(20) NOT NULL,
	"Email" varchar(320) NOT NULL,
	"Photo" bytea NOT NULL,
	"Address" varchar(120) NOT NULL,
	"City" varchar(100) NOT NULL,
	"Region" varchar(100) NOT NULL,
	"Country" varchar(100) NOT NULL,
	"HireDate" DATE NOT NULL,
	"Rate" DECIMAL(5,2) NOT NULL,
	CONSTRAINT "Employees_pk" PRIMARY KEY ("EmployeeID")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "ShoppingCartLines" (
	"ShoppingCartLineID" serial NOT NULL UNIQUE,
	"OrderID" int NOT NULL,
	"GoodID" int NOT NULL,
	"Quantity" int NOT NULL,
	"UnitPrice" money NOT NULL,
	"TotalPrice" money NOT NULL,
	"IsInCart" bit NOT NULL,
	"PurchaseStatus" int NOT NULL,
	CONSTRAINT "ShoppingCartLines_pk" PRIMARY KEY ("ShoppingCartLineID")
) WITH (
  OIDS=FALSE
);

ALTER TABLE "Goods" ADD CONSTRAINT "Goods_fk0" FOREIGN KEY ("CategoryID") REFERENCES "Categories"("CategoryID");

ALTER TABLE "Orders" ADD CONSTRAINT "Orders_fk0" FOREIGN KEY ("CustomerID") REFERENCES "Customers"("CustomerID");
ALTER TABLE "Orders" ADD CONSTRAINT "Orders_fk1" FOREIGN KEY ("EmployeeID") REFERENCES "Employees"("EmployeeID");
ALTER TABLE "Orders" ADD CONSTRAINT "Orders_fk2" FOREIGN KEY ("DeliveryCompanyID") REFERENCES "DeliveryCompanies"("DeliveryCompanyID");




ALTER TABLE "Employees" ADD CONSTRAINT "Employees_fk0" FOREIGN KEY ("RoleID") REFERENCES "Roles"("RoleID");

ALTER TABLE "ShoppingCartLines" ADD CONSTRAINT "ShoppingCartLines_fk0" FOREIGN KEY ("OrderID") REFERENCES "Orders"("OrderID");
ALTER TABLE "ShoppingCartLines" ADD CONSTRAINT "ShoppingCartLines_fk1" FOREIGN KEY ("GoodID") REFERENCES "Goods"("GoodID");