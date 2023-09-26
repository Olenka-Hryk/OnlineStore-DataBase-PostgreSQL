--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= query statements for the creation of 2 roles =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
--=-=-=-=-=-=-=-=-=-=-=-=-=-= and query statements for assignment users to these roles =-=-=-=-=-=-=-=-=-=-=-=-=-=

-- First role: ADMIN
CREATE ROLE admin WITH CREATEROLE;
GRANT CONNECT ON DATABASE "OnlineStore" TO admin;
GRANT ALL PRIVILEGES ON DATABASE "OnlineStore" TO admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO admin;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO admin;


--- assigning user to this role
CREATE USER olena_hryk WITH PASSWORD '***********';
GRANT admin TO olena_hryk;



-- Second role: MANAGER
CREATE ROLE manager;
GRANT CONNECT ON DATABASE "OnlineStore" TO manager;
GRANT USAGE ON SCHEMA public TO manager;
GRANT SELECT ON TABLE 	public."Categories",
						public."Customers",
						public."DeliveryCompanies",
						public."Goods",
						public."Orders",
						public."ShoppingCartLines" TO manager;
GRANT INSERT, UPDATE ON TABLE public."Orders", public."ShoppingCartLines" TO manager;
GRANT USAGE ON SEQUENCE "Orders_OrderID_seq", "ShoppingCartLines_ShoppingCartLineID_seq" TO manager;


--- assigning user to this role
CREATE USER olena_manager WITH PASSWORD '***********';
GRANT manager TO olena_manager;