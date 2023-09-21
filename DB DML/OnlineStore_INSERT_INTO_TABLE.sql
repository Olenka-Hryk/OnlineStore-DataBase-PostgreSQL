INSERT INTO "Roles" 
VALUES (nextval('"Roles_RoleID_seq"'::regclass), 'Courier'),
(nextval('"Roles_RoleID_seq"'::regclass), 'Operator'),
(nextval('"Roles_RoleID_seq"'::regclass), 'Loader'),
(nextval('"Roles_RoleID_seq"'::regclass), 'Supervisor'),
(nextval('"Roles_RoleID_seq"'::regclass), 'Manager');


INSERT INTO "DeliveryCompanies"
VALUES (nextval('"DeliveryCompanies_DeliveryCompanyID_seq"'::regclass), 'NovaPoshta', '+380671234567', null),
(nextval('"DeliveryCompanies_DeliveryCompanyID_seq"'::regclass), 'UkrPoshta', '+380672345678', null),
(nextval('"DeliveryCompanies_DeliveryCompanyID_seq"'::regclass), 'Meest Express', '+380673456789', null),
(nextval('"DeliveryCompanies_DeliveryCompanyID_seq"'::regclass), 'Autolux', '+380674567890', null),
(nextval('"DeliveryCompanies_DeliveryCompanyID_seq"'::regclass), 'Delivery', '+380675678901', null);


UPDATE "DeliveryCompanies"
SET "Logo" = null 
WHERE "DeliveryCompanyID" = 1;


INSERT INTO "Categories" 
VALUES (nextval('"Categories_CategoryID_seq"'::regclass), 'Produce', 'Fresh fruit and vegetables', null),
(nextval('"Categories_CategoryID_seq"'::regclass), 'Frozen food', 'Frozen pizzas, fruit and vegetables', null),
(nextval('"Categories_CategoryID_seq"'::regclass), 'Baking', 'Pre-packaged goods such as flour, sugar, salt, and chocolate chips', null),
(nextval('"Categories_CategoryID_seq"'::regclass), 'Bulk food', 'Peanuts, candy, flour, snacks', null),
(nextval('"Categories_CategoryID_seq"'::regclass), 'Breads', 'Packaged breads, bagels, hamburger and hot dog buns', null),
(nextval('"Categories_CategoryID_seq"'::regclass), 'Meat and seafood', 'Packaged beef, chicken, fish', null),
(nextval('"Categories_CategoryID_seq"'::regclass), 'Bakery', 'Fresh breads, muffins, cakes to order', null),
(nextval('"Categories_CategoryID_seq"'::regclass), 'Dairy', 'Milk, eggs, dairy, yogurt', null),
(nextval('"Categories_CategoryID_seq"'::regclass), 'Canned foods', 'Beans, pasta sauce, canned fruit and vegetables', null),
(nextval('"Categories_CategoryID_seq"'::regclass), 'Condiments', 'Ketchup, BBQ sauce, salad dressings, oil', null),
(nextval('"Categories_CategoryID_seq"'::regclass), 'Snacks', 'Chips, packaged candy, cookies, crackers', null),
(nextval('"Categories_CategoryID_seq"'::regclass), 'Beverages', 'Juice, pop, coffee, tea', null),
(nextval('"Categories_CategoryID_seq"'::regclass), 'Household items', 'Toilet paper, tissue paper, garbage bags, detergent, diapers', null),
(nextval('"Categories_CategoryID_seq"'::regclass), 'Health and beauty', 'Make up, deodorant, feminine products', null);


INSERT INTO "Customers"
VALUES (nextval('"Customers_CustomerID_seq"'::regclass), '1', 'Petrovych', 'Petro', 'Petryk', '1990-11-11', '+380671234567', 'petryk@gmail.com', null, '01234', 'Bratyslavska st.', 'Kyiv', 'Kyiv', 'Ukraine', '2022-09-01', '1'),
(nextval('"Customers_CustomerID_seq"'::regclass), '2', 'Pavlivna', 'Iryna', 'Petrychuk', '1980-12-10', '+380672345678', 'petrychuk@gmail.com', null, '02345', 'Zhukovskogo st.', 'Dnipro', 'Dnipro', 'Ukraine', '2021-08-11', '1'),
(nextval('"Customers_CustomerID_seq"'::regclass), '3', 'Myhaylovych', 'Valerii', 'Pavlyk', '1987-04-11', '+380501234567', 'pavlyk@gmail.com', null, '03134', 'Dekabrystiv st.', 'Kyiv', 'Kyiv', 'Ukraine', '2020-07-01', '1'),
(nextval('"Customers_CustomerID_seq"'::regclass), '4', 'Petrova', 'Anna', 'Stoyan', '1980-03-01', '+380951234567', 'stoyan@gmail.com', null, '03134', 'Khotkevycha st.', 'Kyiv', 'Kyiv', 'Ukraine', '2023-02-01', '1'),
(nextval('"Customers_CustomerID_seq"'::regclass), '5', 'Volodymyrovych', 'Volodymyr', 'Serdiuchenko', '1982-11-06', '+380631234567', 'serdyuk@gmail.com', null, '01234', 'Bratyslavska st.', 'Kyiv', 'Kyiv', 'Ukraine', '2023-09-01', '1'),
(nextval('"Customers_CustomerID_seq"'::regclass), '6', 'Valeriivna', 'Valentyna', 'Shpak', '1975-11-11', '+380673456789', 'shpak@gmail.com', null, '01234', 'Lisova st.', 'Kyiv', 'Kyiv', 'Ukraine', '2023-06-11', '1'),
(nextval('"Customers_CustomerID_seq"'::regclass), '7', 'Denysova', 'Kateryna', 'Shpal', '1995-12-07', '+380952345678', 'shpal@gmail.com', null, '04234', 'Polya st.', 'Dnipro', 'Dnipro', 'Ukraine', '2019-10-08', '1'),
(nextval('"Customers_CustomerID_seq"'::regclass), '8', 'Viktorovych', 'Viktor', 'Gudimenko', '1983-06-05', '+380632345678', 'gudimenko@gmail.com', null, '01564', 'Shevchenko st.', 'Kyiv', 'Kyiv', 'Ukraine', '2021-10-16', '1'),
(nextval('"Customers_CustomerID_seq"'::regclass), '9', 'Dmytrivna', 'Inna', 'Koval', '1984-12-10', '+380953456789', 'koval@gmail.com', null, '05234', 'Gorodotska st.', 'Lviv', 'Lviv', 'Ukraine', '2023-04-09', '1'),
(nextval('"Customers_CustomerID_seq"'::regclass), '10', 'Yuriiovych', 'Yurii', 'Yurkiv', '1997-10-10', '+380633456789', 'yurkiv@gmail.com', null, '06234', 'Kyivska st.', 'Lviv', 'Lviv', 'Ukraine', '2019-08-07', '1');


ALTER TABLE "Employees" ALTER COLUMN "Photo" DROP NOT NULL;


INSERT INTO "Employees" 
VALUES (nextval('"Employees_EmployeeID_seq"'::regclass), 1, 'Elias', 'Christiansen', '1947-01-22', '77610558', 'elias.christiansen@example.com', NULL, 'Assens, Syddanmark, Denmark', 'Assens', 'Syddanmark', 'Denmark', '2013-07-19', 0),
(nextval('"Employees_EmployeeID_seq"'::regclass), 1, 'Tejaswi', 'Prajapati', '1963-07-19', '8906262609', 'tejaswi.prajapati@example.com', NULL,	'Nellore, Gujarat, India', 'Nellore', 'Gujarat', 'India', '2007-02-10', 0),
(nextval('"Employees_EmployeeID_seq"'::regclass), 1, 'Olímpia', 'Vieira', '2000-05-26', '6036651840', 'olimpia.vieira@example.com', NULL, 'Teresópolis, Tocantins, Brazil', 'Teresópolis', 'Tocantins',	'Brazil', '2014-01-07',	0),
(nextval('"Employees_EmployeeID_seq"'::regclass), 1, 'Ajith', 'Mathew', '1949-05-02', '9367298046', 'ajith.mathew@example.com', NULL, 'Vijayawada, Gujarat, India', 'Vijayawada', 'Gujarat', 'India', '2002-05-18', 0),
(nextval('"Employees_EmployeeID_seq"'::regclass), 1, 'Banu', 'Verduin', '1984-11-06', '0341743610', 'banu.verduin@example.com', NULL, 'Lienden, Gelderland, Netherlands', 'Lienden', 'Gelderland', 'Netherlands', '2004-08-31',	0),
(nextval('"Employees_EmployeeID_seq"'::regclass), 1, 'Marion', 'Williamson', '1967-02-15', '0673287371', 'marion.williamson@example.com', NULL, 'Tamworth, New South Wales, Australia', 'Tamworth',	'New South Wales', 'Australia', '2003-08-09', 0),
(nextval('"Employees_EmployeeID_seq"'::regclass), 1, 'Holly', 'Murray', '2000-10-02', '0690686642',	'holly.murray@example.com', NULL, 'Adelaide, South Australia, Australia', 'Adelaide', 'South Australia', 'Australia', '2013-01-07',	0),
(nextval('"Employees_EmployeeID_seq"'::regclass), 1, 'Carlos', 'Brovold', '1968-10-05',	'24128576',	'carlos.brovold@example.com', NULL,	'Skogsvågen, Nord-Trøndelag, Norway', 'Skogsvågen',	'Nord-Trøndelag', 'Norway', '2011-11-21',0),
(nextval('"Employees_EmployeeID_seq"'::regclass), 1, 'Glen', 'Thomas', '1945-07-15', '0515602997', 'glen.thomas@example.com', NULL, 'Duleek, Wicklow, Ireland', 'Duleek', 'Wicklow', 'Ireland', '2017-01-21', 0),
(nextval('"Employees_EmployeeID_seq"'::regclass), 1, 'Ticiana',	'Novaes', '1988-08-15',	'0679443668', 'ticiana.novaes@example.com', NULL, 'Piracicaba, Roraima, Brazil', 'Piracicaba', 'Roraima', 'Brazil',	'2006-04-13',0);


ALTER TABLE "Goods" ALTER COLUMN "ProductName" TYPE varchar USING "ProductName"::varchar;
ALTER TABLE "Goods" ALTER COLUMN "UnitPrice" TYPE numeric USING "UnitPrice"::numeric;


INSERT INTO "Goods" ("GoodID", "CategoryID", "UnitOfMeasurement", "ProductName", "UnitPrice", "Description", "Weight", "GoodLength", "GoodWidth", "GoodHeight", "IsAvailable", "Picture") 
VALUES (nextval('"Goods_GoodID_seq"'::regclass), 5, 'loaf', 'Jacksons Thick Sliced White Bread', 0.89, 'White D-Shaped loaf. Sliced- 16 slices + 2 crusts. Packaged in a labelled, tied bread bag.', 480, NULL, NULL, NULL, '1', NULL),
(nextval('"Goods_GoodID_seq"'::regclass), 5, 'loaf', 'Jacksons Seeded Bloomer', 0.5, 'White Multiseed D-Shaped Loaf. Sliced - 16 slices + 2 crusts. Packaged in a pre-printed, tied bread bag.', 480, NULL, NULL, NULL, '1', NULL),
(nextval('"Goods_GoodID_seq"'::regclass), 8, 'carton', 'Jord Oat & Hemp Milk Alternative', 1.5, 'Jord Oat & Hemp is 100% plant-based, organic and lactose-free. It has a slightly nutty flavour, and goes perfectly with granola or oatmeal. Great taste, no additives, no added sugar.', 880, NULL, NULL, NULL, '1', NULL),
(nextval('"Goods_GoodID_seq"'::regclass), 12, 'bottle', 'Fair Cape Juice Apple Bottle 2L', 1.9, NULL, 990, NULL, NULL, NULL, '1', NULL),
(nextval('"Goods_GoodID_seq"'::regclass), 12, 'Pouch', 'Frisco Coffee 750G', 10.99, NULL, 990, NULL, NULL, NULL, '1', NULL),
(nextval('"Goods_GoodID_seq"'::regclass), 11, 'Pouch', 'Loacker Vanilla Wafer - 45g', 0.8, 'Get the best of taste and flavor with the Loacker Vanilla Wafers. They have a delicious taste and is sure to please your palate. Featuring various vitamins, they keep you well-nourished. You can consume these snacks with tea or coffee.', 45, NULL, NULL, NULL, '1', NULL),
(nextval('"Goods_GoodID_seq"'::regclass), 12, 'Pack', 'Death Wish Coffee, Medium Roast Ground Coffee, Defiantly Strong, Organic and Fair Trade', 17.24, 'SMOOTH DAY BOOST: Get ready for a long day with our ground coffee medium roast. Made lighter than our dark roast ground coffee yet, still, more bold & powerful than your average cup! Hit the ground running with our medium roast ground coffee roast!', 454, NULL, NULL, NULL, '1', NULL),
(nextval('"Goods_GoodID_seq"'::regclass), 11, 'box', 'Abe''s, Vegan Chocolate Chip Mini Muffins, 12 Pieces', 6.49, 'School-Friendly; Peanut & Sesame-Free Facility; No Dairy; No Eggs. No Nuts or Soy.', 284, NULL, NULL, NULL, '1', NULL),
(nextval('"Goods_GoodID_seq"'::regclass), 2, 'box', 'Amy''s Frozen Pizza, Roasted Vegetable Vegan Pizza, Made With Organic Mushrooms, Onions and Peppers, Frozen Meals, 340G', 10.79, 'Made with marinated artichoke hearts and organic shiitake mushrooms, red onions that are slow-roasted and caramelized, and fire-roasted red peppers; Spread over our hand-stretched crust and complemented with a drizzle of balsamic vinegar.', 340, NULL, NULL, NULL, '1', NULL),
(nextval('"Goods_GoodID_seq"'::regclass), 2, 'box', 'Sweet Earth Veggie Lover''s Frozen Pizza, 403G', 8.49, 'Sweet Earth pizza offers ingredients that matter and taste that delivers; This vegan pizza is topped with zesty marinara, vegan cauliflower herb sauce, broccoli.', 403, NULL, NULL, NULL, '1', NULL);


ALTER TABLE "Orders" ALTER COLUMN "Payment" TYPE bool USING "Payment"::int::bool;
ALTER TABLE "Orders" ALTER COLUMN "Payment" SET NOT NULL;
ALTER TABLE "Orders" ALTER COLUMN "Payment" SET DEFAULT false;

INSERT INTO "Orders" ("OrderID", "CustomerID", "EmployeeID", "DeliveryCompanyID", "OrderDate", "OrderDeliveryAddress", "OrderTrackingNumber", "Payment")
VALUES (nextval('"Orders_OrderID_seq"'::regclass), 5, 2, 1, '2020-02-24', 'Bratyslavska st.', '59000682689497', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 3, 1, 2, '2020-05-12', 'Dekabrystiv st.', '59000672487790', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 1, 9, 3, '2020-07-02', 'Lugova str.', '59000446589027', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 8, 7, 4, '2020-04-02', 'Shevchenko st.', '59000682689497', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 5, 3, 5, '2020-08-17', 'Bratyslavska st.', '59000162699566', FALSE),
(nextval('"Orders_OrderID_seq"'::regclass), 2, 5, 3, '2020-10-07', 'Zhukovskogo st.', '59000652339702', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 10, 1, 2, '2021-02-10', 'Kyivska st.', '59000682559902', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 7, 3, 4, '2021-04-20', 'Polya st.', '59000652300701', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 6, 2, 4, '2021-06-02', 'Zolota st.', '59000355369892', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 8, 5, 1, '2021-07-17', 'Shevchenko st.', '59000652683402', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 2, 7, 1, '2021-07-10', 'Zhukovskogo st.', '59000623436702', FALSE),
(nextval('"Orders_OrderID_seq"'::regclass), 1, 9, 1, '2021-07-30', 'Bratyslavska st.', '59000618537005', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 4, 10, 5, '2021-10-12', 'Ugorska st.', '59000619569114', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 9, 10, 1, '2022-01-11', 'Gorodotska st.', '59000682559902', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 3, 7, 3, '2022-03-12', 'Dekabrystiv st.', '59000652300701', FALSE),
(nextval('"Orders_OrderID_seq"'::regclass), 5, 9, 5, '2022-04-22', 'Bratyslavska st.', '59000355369892', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 2, 5, 2, '2022-05-18', 'Bandera st.', '59000652683402', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 7, 2, 5, '2022-05-19', 'Polya st.', '59000623436702', FALSE),
(nextval('"Orders_OrderID_seq"'::regclass), 8, 3, 2, '2022-05-20', 'Shevchenko st.', '59000618537005', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 1, 1, 2, '2022-05-01', 'Santa Barbara st.', '59000619569114', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 4, 10, 5, '2022-08-23', 'Khotkevycha st.', '59000619569114', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 6, 10, 5, '2022-10-16', 'Lisova st.', '59000619569114', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 2, 1, 2, '2023-01-01', 'Zhukovskogo st.', '59000612349502', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 5, 4, 5, '2023-01-10', 'Doroshenka st.', '59000650065001', FALSE),
(nextval('"Orders_OrderID_seq"'::regclass), 6, 5, 3, '2023-02-12', 'Lisova st.', '59000335369791', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 7, 7, 4, '2023-02-16', 'Polya st.', '59000622483492', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 2, 8, 1, '2023-02-11', 'Zhukovskogo st.', '59000655438745', FALSE),
(nextval('"Orders_OrderID_seq"'::regclass), 10, 10, 2, '2023-04-28', 'Kyivska st.', '59000614538967', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 1, 1, 4, '2023-05-08', 'Bratyslavska st.', '59000614469342', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 3, 2, 4, '2023-06-22', 'Lvivska st.', '59000613569678', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 4, 5, 5, '2023-08-15', 'Khotkevycha st.', '59000629760141', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 8, 3, 2, '2023-08-10', 'Shevchenko st.', '59000622567801', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 9, 3, 2, '2023-08-18', 'Gorodotska st.', '59000652670882', FALSE),
(nextval('"Orders_OrderID_seq"'::regclass), 2, 7, 3, '2023-08-20', 'Zhukovskogo st.', '59000692633321', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 6, 9, 1, '2023-09-15', 'Vugovska st.', '59000656521469', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 2, 10, 1, '2023-09-12', 'Zhukovskogo st.', '59000643669834', FALSE),
(nextval('"Orders_OrderID_seq"'::regclass), 1, 2, 4, '2023-10-21', 'Bratyslavska st.', '59000678437302', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 7, 4, 3, '2023-10-04', 'Polya st.', '59000635599167', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 9, 6, 2, '2023-11-03', 'Gorodotska st.', '59000649367010', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 10, 8, 1, '2023-11-12', 'Kyivska st.', '59000610268171', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 3, 9, 1, '2023-12-27', 'Kryva st.', '59000603569412', TRUE),
(nextval('"Orders_OrderID_seq"'::regclass), 5, 10, 5, '2023-12-18', 'Lisova st.', '59000639579183', TRUE);


UPDATE "Orders"
SET "OrderTrackingNumber" = '59000612137013' 
WHERE "OrderID" = 19;

UPDATE "Orders"
SET "OrderTrackingNumber" = '59000602670444' 
WHERE "OrderID" = 4;

UPDATE "Orders"
SET "OrderTrackingNumber" = '59000682050600' 
WHERE "OrderID" = 14;

UPDATE "Orders"
SET "OrderTrackingNumber" = '59000692989499' 
WHERE "OrderID" = 17;

UPDATE "Orders"
SET "OrderTrackingNumber" = '59000612100111' 
WHERE "OrderID" = 15;

UPDATE "Orders"
SET "OrderTrackingNumber" = '59000601030700' 
WHERE "OrderID" = 18;

UPDATE "Orders"
SET "OrderTrackingNumber" = '59000619569222' 
WHERE "OrderID" = 20;

UPDATE "Orders"
SET "OrderTrackingNumber" = '59000619569333' 
WHERE "OrderID" = 21;

UPDATE "Orders"
SET "OrderTrackingNumber" = '59000619569444' 
WHERE "OrderID" = 22;

UPDATE "Orders"
SET "OrderTrackingNumber" = '59000660069192' 
WHERE "OrderID" = 16;


ALTER TABLE "ShoppingCartLines" ALTER COLUMN "IsInCart" TYPE bool USING "IsInCart"::int::bool;
ALTER TABLE "ShoppingCartLines" ALTER COLUMN "IsInCart" SET NOT NULL;
ALTER TABLE "ShoppingCartLines" ALTER COLUMN "IsInCart" SET DEFAULT false;
ALTER TABLE "ShoppingCartLines" ALTER COLUMN "UnitPrice" TYPE numeric USING "UnitPrice"::numeric;
ALTER TABLE "ShoppingCartLines" ALTER COLUMN "PurchaseStatus" TYPE bpchar(50) USING "PurchaseStatus"::bpchar(50);


INSERT INTO "ShoppingCartLines" ("ShoppingCartLineID", "OrderID", "GoodID", "Quantity", "UnitPrice", "TotalPrice", "IsInCart", "PurchaseStatus")
VALUES (nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 1, 2, 3, 0.5, 1.5, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 3, 3, 15, 1.5, 22.5, TRUE, 'Completed'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 5, 1, 8, 0.89, 7.12, FALSE, 'Declined'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 6, 4, 24, 1.9, 45.6, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 7, 10, 1, 8.49, 8.49, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 8, 8, 61, 6.49, 395.89, TRUE, 'Completed'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 9, 6, 30, 0.8, 24, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 10, 7, 10, 17.24, 172.4, TRUE, 'Completed'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 11, 5, 6, 10.99, 65.94, FALSE, 'Declined'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 12, 2, 100, 0.5, 50, TRUE, 'Completed'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 13, 1, 56, 0.89, 49.84, FALSE, 'Declined'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 23, 4, 17, 1.9, 32.3, TRUE, 'Completed'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 24, 8, 20, 6.49, 129.8, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 25, 5, 18, 10.99, 197.82, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 26, 1, 150, 0.89, 133.5, TRUE, 'Completed'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 27, 3, 111, 1.5, 166.5, TRUE, 'Declined'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 28, 6, 28, 0.8, 22.4, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 29, 8, 150, 6.49, 973.5, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 30, 4, 56, 1.9, 106.4, TRUE, 'Completed'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 31, 7, 89, 17.24, 1534.36, TRUE, 'Cancelled'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 32, 5, 2, 10.99, 21.98, TRUE, 'Completed'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 33, 2, 45, 0.5, 22.5, FALSE, 'Declined'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 34, 9, 40, 10.79, 431.6, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 4, 10, 110, 8.49, 933.9, TRUE, 'Completed'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 14, 8, 11, 6.49, 71.39, TRUE, 'Completed'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 17, 10, 56, 8.49, 475.44, TRUE, 'Completed'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 15, 3, 5, 1.5, 7.5, TRUE, 'Declined'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 18, 10, 4, 8.49, 33.96, TRUE, 'Declined'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 2, 8, 201, 6.49, 1304.49, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 35, 5, 89, 10.99, 978.11, TRUE, 'Completed'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 36, 10, 16, 8.49, 135.84, FALSE, 'Declined'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 37, 9, 2, 10.79, 21.58, TRUE, 'Completed'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 38, 2, 30, 0.5, 15, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 39, 6, 10, 0.8, 8, TRUE, 'Completed'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 40, 8, 40, 6.49, 259.6, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 41, 10, 20, 8.49, 169.8, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 42, 4, 19, 1.9, 36.1, FALSE, 'Cancelled'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 19, 1, 6, 0.89, 5.34, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 20, 8, 3, 6.49, 19.47, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 21, 7, 5, 17.24, 86.2, TRUE, 'Shipped'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 22, 3, 1, 1.5, 1.5, TRUE, 'Completed'),
(nextval('"ShoppingCartLines_ShoppingCartLineID_seq"'::regclass), 16, 9, 25, 10.79, 269.75, TRUE, 'Shipped');