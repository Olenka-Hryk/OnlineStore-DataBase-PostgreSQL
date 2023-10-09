// Create-Select database OnlineStore.
use('OnlineStore');

// Insert documents into the Roles collection.
db.Roles.insertMany([{
	"RoleID": 1,
	"RoleName": "Courier"
},
{
	"RoleID": 2,
	"RoleName": "Operator"
},
{
	"RoleID": 3,
	"RoleName": "Loader"
},
{
	"RoleID": 4,
	"RoleName": "Supervisor"
},
{
	"RoleID": 5,
	"RoleName": "Manager"
}]);

// Insert documents into the Goods collection.
db.Goods.insertMany([{
	"GoodID": 1,
	"CategoryID": 5,
	"UnitOfMeasurement": "loaf",
	"ProductName": "Jacksons Thick Sliced White Bread",
	"UnitPrice": 0.89,
	"Description": "White D-Shaped loaf. Sliced- 16 slices + 2 crusts. Packaged in a labelled, tied bread bag.",
	"Weight": 480,
	"GoodLength": null,
	"GoodWidth": null,
	"GoodHeight": null,
	"IsAvailable": "1",
	"Picture": null
},
{
	"GoodID": 2,
	"CategoryID": 5,
	"UnitOfMeasurement": "loaf",
	"ProductName": "Jacksons Seeded Bloomer",
	"UnitPrice": 0.5,
	"Description": "White Multiseed D-Shaped Loaf. Sliced - 16 slices + 2 crusts. Packaged in a pre-printed, tied bread bag.",
	"Weight": 480,
	"GoodLength": null,
	"GoodWidth": null,
	"GoodHeight": null,
	"IsAvailable": "1",
	"Picture": null
},
{
	"GoodID": 3,
	"CategoryID": 8,
	"UnitOfMeasurement": "carton",
	"ProductName": "Jord Oat & Hemp Milk Alternative",
	"UnitPrice": 1.5,
	"Description": "Jord Oat & Hemp is 100% plant-based, organic and lactose-free. It has a slightly nutty flavour, and goes perfectly with granola or oatmeal. Great taste, no additives, no added sugar.",
	"Weight": 880,
	"GoodLength": null,
	"GoodWidth": null,
	"GoodHeight": null,
	"IsAvailable": "1",
	"Picture": null
},
{
	"GoodID": 4,
	"CategoryID": 12,
	"UnitOfMeasurement": "bottle",
	"ProductName": "Fair Cape Juice Apple Bottle 2L",
	"UnitPrice": 1.9,
	"Description": null,
	"Weight": 990,
	"GoodLength": null,
	"GoodWidth": null,
	"GoodHeight": null,
	"IsAvailable": "1",
	"Picture": null
},
{
	"GoodID": 5,
	"CategoryID": 12,
	"UnitOfMeasurement": "Pouch",
	"ProductName": "Frisco Coffee 750G",
	"UnitPrice": 10.99,
	"Description": null,
	"Weight": 990,
	"GoodLength": null,
	"GoodWidth": null,
	"GoodHeight": null,
	"IsAvailable": "1",
	"Picture": null
},
{
	"GoodID": 6,
	"CategoryID": 11,
	"UnitOfMeasurement": "Pouch",
	"ProductName": "Loacker Vanilla Wafer - 45g",
	"UnitPrice": 0.8,
	"Description": "Get the best of taste and flavor with the Loacker Vanilla Wafers. They have a delicious taste and is sure to please your palate. Featuring various vitamins, they keep you well-nourished. You can consume these snacks with tea or coffee.",
	"Weight": 45,
	"GoodLength": null,
	"GoodWidth": null,
	"GoodHeight": null,
	"IsAvailable": "1",
	"Picture": null
},
{
	"GoodID": 7,
	"CategoryID": 12,
	"UnitOfMeasurement": "Pack",
	"ProductName": "Death Wish Coffee, Medium Roast Ground Coffee, Defiantly Strong, Organic and Fair Trade",
	"UnitPrice": 17.24,
	"Description": "SMOOTH DAY BOOST: Get ready for a long day with our ground coffee medium roast. Made lighter than our dark roast ground coffee yet, still, more bold & powerful than your average cup! Hit the ground running with our medium roast ground coffee roast!",
	"Weight": 454,
	"GoodLength": null,
	"GoodWidth": null,
	"GoodHeight": null,
	"IsAvailable": "1",
	"Picture": null
},
{
	"GoodID": 8,
	"CategoryID": 11,
	"UnitOfMeasurement": "box",
	"ProductName": "Abe's, Vegan Chocolate Chip Mini Muffins, 12 Pieces",
	"UnitPrice": 6.49,
	"Description": "School-Friendly; Peanut & Sesame-Free Facility; No Dairy; No Eggs. No Nuts or Soy.",
	"Weight": 284,
	"GoodLength": null,
	"GoodWidth": null,
	"GoodHeight": null,
	"IsAvailable": "1",
	"Picture": null
},
{
	"GoodID": 9,
	"CategoryID": 2,
	"UnitOfMeasurement": "box",
	"ProductName": "Amy's Frozen Pizza, Roasted Vegetable Vegan Pizza, Made With Organic Mushrooms, Onions and Peppers, Frozen Meals, 340G",
	"UnitPrice": 10.79,
	"Description": "Made with marinated artichoke hearts and organic shiitake mushrooms, red onions that are slow-roasted and caramelized, and fire-roasted red peppers; Spread over our hand-stretched crust and complemented with a drizzle of balsamic vinegar.",
	"Weight": 340,
	"GoodLength": null,
	"GoodWidth": null,
	"GoodHeight": null,
	"IsAvailable": "1",
	"Picture": null
},
{
	"GoodID": 10,
	"CategoryID": 2,
	"UnitOfMeasurement": "box",
	"ProductName": "Sweet Earth Veggie Lover's Frozen Pizza, 403G",
	"UnitPrice": 8.49,
	"Description": "Sweet Earth pizza offers ingredients that matter and taste that delivers; This vegan pizza is topped with zesty marinara, vegan cauliflower herb sauce, broccoli.",
	"Weight": 403,
	"GoodLength": null,
	"GoodWidth": null,
	"GoodHeight": null,
	"IsAvailable": "1",
	"Picture": null
}]);

// Insert documents into the Categories collection.
db.Categories.insertMany([{
	"CategoryID": 1,
	"CategoryName": "Produce",
	"Description": "Fresh fruit and vegetables",
	"Picture": null
},
{
	"CategoryID": 2,
	"CategoryName": "Frozen food",
	"Description": "Frozen pizzas, fruit and vegetables",
	"Picture": null
},
{
	"CategoryID": 3,
	"CategoryName": "Baking",
	"Description": "Pre-packaged goods such as flour, sugar, salt, and chocolate chips",
	"Picture": null
},
{
	"CategoryID": 4,
	"CategoryName": "Bulk food",
	"Description": "Peanuts, candy, flour, snacks",
	"Picture": null
},
{
	"CategoryID": 5,
	"CategoryName": "Breads",
	"Description": "Packaged breads, bagels, hamburger and hot dog buns",
	"Picture": null
},
{
	"CategoryID": 6,
	"CategoryName": "Meat and seafood",
	"Description": "Packaged beef, chicken, fish",
	"Picture": null
},
{
	"CategoryID": 7,
	"CategoryName": "Bakery",
	"Description": "Fresh breads, muffins, cakes to order",
	"Picture": null
},
{
	"CategoryID": 8,
	"CategoryName": "Dairy",
	"Description": "Milk, eggs, dairy, yogurt",
	"Picture": null
},
{
	"CategoryID": 9,
	"CategoryName": "Canned foods",
	"Description": "Beans, pasta sauce, canned fruit and vegetables",
	"Picture": null
},
{
	"CategoryID": 10,
	"CategoryName": "Condiments",
	"Description": "Ketchup, BBQ sauce, salad dressings, oil",
	"Picture": null
},
{
	"CategoryID": 11,
	"CategoryName": "Snacks",
	"Description": "Chips, packaged candy, cookies, crackers",
	"Picture": null
},
{
	"CategoryID": 12,
	"CategoryName": "Beverages",
	"Description": "Juice, pop, coffee, tea",
	"Picture": null
},
{
	"CategoryID": 13,
	"CategoryName": "Household items",
	"Description": "Toilet paper, tissue paper, garbage bags, detergent, diapers",
	"Picture": null
},
{
	"CategoryID": 14,
	"CategoryName": "Health and beauty",
	"Description": "Make up, deodorant, feminine products",
	"Picture": null
}]);

// Insert documents into the Customers collection.
db.Customers.insertMany([{
	"CustomerID": 1,
	"Password": "1",
	"PatronymicName": "Petrovych",
	"FirstName": "Petro",
	"LastName": "Petryk",
	"BirthDate": "1990-11-11",
	"Phone": "+380671234567",
	"Email": "petryk@gmail.com",
	"Photo": null,
	"ZipCode": "01234",
	"Address": "Bratyslavska st.",
	"City": "Kyiv",
	"Region": "Kyiv",
	"Country": "Ukraine",
	"RegistrationDate": "2022-09-01",
	"EmailVerified": "1"
},
{
	"CustomerID": 2,
	"Password": "2",
	"PatronymicName": "Pavlivna",
	"FirstName": "Iryna",
	"LastName": "Petrychuk",
	"BirthDate": "1980-12-10",
	"Phone": "+380672345678",
	"Email": "petrychuk@gmail.com",
	"Photo": null,
	"ZipCode": "02345",
	"Address": "Zhukovskogo st.",
	"City": "Dnipro",
	"Region": "Dnipro",
	"Country": "Ukraine",
	"RegistrationDate": "2021-08-11",
	"EmailVerified": "1"
},
{
	"CustomerID": 3,
	"Password": "3",
	"PatronymicName": "Myhaylovych",
	"FirstName": "Valerii",
	"LastName": "Pavlyk",
	"BirthDate": "1987-04-11",
	"Phone": "+380501234567",
	"Email": "pavlyk@gmail.com",
	"Photo": null,
	"ZipCode": "03134",
	"Address": "Dekabrystiv st.",
	"City": "Kyiv",
	"Region": "Kyiv",
	"Country": "Ukraine",
	"RegistrationDate": "2020-07-01",
	"EmailVerified": "1"
},
{
	"CustomerID": 4,
	"Password": "4",
	"PatronymicName": "Petrova",
	"FirstName": "Anna",
	"LastName": "Stoyan",
	"BirthDate": "1980-03-01",
	"Phone": "+380951234567",
	"Email": "stoyan@gmail.com",
	"Photo": null,
	"ZipCode": "03134",
	"Address": "Khotkevycha st.",
	"City": "Kyiv",
	"Region": "Kyiv",
	"Country": "Ukraine",
	"RegistrationDate": "2023-02-01",
	"EmailVerified": "1"
},
{
	"CustomerID": 5,
	"Password": "5",
	"PatronymicName": "Volodymyrovych",
	"FirstName": "Volodymyr",
	"LastName": "Serdiuchenko",
	"BirthDate": "1982-11-06",
	"Phone": "+380631234567",
	"Email": "serdyuk@gmail.com",
	"Photo": null,
	"ZipCode": "01234",
	"Address": "Bratyslavska st.",
	"City": "Kyiv",
	"Region": "Kyiv",
	"Country": "Ukraine",
	"RegistrationDate": "2023-09-01",
	"EmailVerified": "1"
},
{
	"CustomerID": 6,
	"Password": "6",
	"PatronymicName": "Valeriivna",
	"FirstName": "Valentyna",
	"LastName": "Shpak",
	"BirthDate": "1975-11-11",
	"Phone": "+380673456789",
	"Email": "shpak@gmail.com",
	"Photo": null,
	"ZipCode": "01234",
	"Address": "Lisova st.",
	"City": "Kyiv",
	"Region": "Kyiv",
	"Country": "Ukraine",
	"RegistrationDate": "2023-06-11",
	"EmailVerified": "1"
},
{
	"CustomerID": 7,
	"Password": "7",
	"PatronymicName": "Denysova",
	"FirstName": "Kateryna",
	"LastName": "Shpal",
	"BirthDate": "1995-12-07",
	"Phone": "+380952345678",
	"Email": "shpal@gmail.com",
	"Photo": null,
	"ZipCode": "04234",
	"Address": "Polya st.",
	"City": "Dnipro",
	"Region": "Dnipro",
	"Country": "Ukraine",
	"RegistrationDate": "2019-10-08",
	"EmailVerified": "1"
},
{
	"CustomerID": 8,
	"Password": "8",
	"PatronymicName": "Viktorovych",
	"FirstName": "Viktor",
	"LastName": "Gudimenko",
	"BirthDate": "1983-06-05",
	"Phone": "+380632345678",
	"Email": "gudimenko@gmail.com",
	"Photo": null,
	"ZipCode": "01564",
	"Address": "Shevchenko st.",
	"City": "Kyiv",
	"Region": "Kyiv",
	"Country": "Ukraine",
	"RegistrationDate": "2021-10-16",
	"EmailVerified": "1"
},
{
	"CustomerID": 9,
	"Password": "9",
	"PatronymicName": "Dmytrivna",
	"FirstName": "Inna",
	"LastName": "Koval",
	"BirthDate": "1984-12-10",
	"Phone": "+380953456789",
	"Email": "koval@gmail.com",
	"Photo": null,
	"ZipCode": "05234",
	"Address": "Gorodotska st.",
	"City": "Lviv",
	"Region": "Lviv",
	"Country": "Ukraine",
	"RegistrationDate": "2023-04-09",
	"EmailVerified": "1"
},
{
	"CustomerID": 10,
	"Password": "10",
	"PatronymicName": "Yuriiovych",
	"FirstName": "Yurii",
	"LastName": "Yurkiv",
	"BirthDate": "1997-10-10",
	"Phone": "+380633456789",
	"Email": "yurkiv@gmail.com",
	"Photo": null,
	"ZipCode": "06234",
	"Address": "Kyivska st.",
	"City": "Lviv",
	"Region": "Lviv",
	"Country": "Ukraine",
	"RegistrationDate": "2019-08-07",
	"EmailVerified": "1"
}]);

// Insert documents into the DeliveryCompanies collection.
db.DeliveryCompanies.insertMany([{
	"DeliveryCompanyID": 2,
	"DeliveryCompanyName": "UkrPoshta",
	"ContactPhone": "+380672345678",
	"Logo": null
},
{
	"DeliveryCompanyID": 3,
	"DeliveryCompanyName": "Meest Express",
	"ContactPhone": "+380673456789",
	"Logo": null
},
{
	"DeliveryCompanyID": 4,
	"DeliveryCompanyName": "Autolux",
	"ContactPhone": "+380674567890",
	"Logo": null
},
{
	"DeliveryCompanyID": 5,
	"DeliveryCompanyName": "Delivery",
	"ContactPhone": "+380675678901",
	"Logo": null
},
{
	"DeliveryCompanyID": 1,
	"DeliveryCompanyName": "NovaPoshta",
	"ContactPhone": "+380671234567",
	"Logo": null
}]);

// Insert documents into the Employees collection.
db.Employees.insertMany([{
	"EmployeeID": 1,
	"RoleID": 1,
	"FirstName": "Elias",
	"LastName": "Christiansen",
	"BirthDate": "1947-01-22",
	"Phone": "77610558",
	"Email": "elias.christiansen@example.com",
	"Photo": null,
	"Address": "Assens, Syddanmark, Denmark",
	"City": "Assens",
	"Region": "Syddanmark",
	"Country": "Denmark",
	"HireDate": "2013-07-19",
	"Rate": 0.00
},
{
	"EmployeeID": 2,
	"RoleID": 1,
	"FirstName": "Tejaswi",
	"LastName": "Prajapati",
	"BirthDate": "1963-07-19",
	"Phone": "8906262609",
	"Email": "tejaswi.prajapati@example.com",
	"Photo": null,
	"Address": "Nellore, Gujarat, India",
	"City": "Nellore",
	"Region": "Gujarat",
	"Country": "India",
	"HireDate": "2007-02-10",
	"Rate": 0.00
},
{
	"EmployeeID": 3,
	"RoleID": 1,
	"FirstName": "Olímpia",
	"LastName": "Vieira",
	"BirthDate": "2000-05-26",
	"Phone": "6036651840",
	"Email": "olimpia.vieira@example.com",
	"Photo": null,
	"Address": "Teresópolis, Tocantins, Brazil",
	"City": "Teresópolis",
	"Region": "Tocantins",
	"Country": "Brazil",
	"HireDate": "2014-01-07",
	"Rate": 0.00
},
{
	"EmployeeID": 4,
	"RoleID": 1,
	"FirstName": "Ajith",
	"LastName": "Mathew",
	"BirthDate": "1949-05-02",
	"Phone": "9367298046",
	"Email": "ajith.mathew@example.com",
	"Photo": null,
	"Address": "Vijayawada, Gujarat, India",
	"City": "Vijayawada",
	"Region": "Gujarat",
	"Country": "India",
	"HireDate": "2002-05-18",
	"Rate": 0.00
},
{
	"EmployeeID": 5,
	"RoleID": 1,
	"FirstName": "Banu",
	"LastName": "Verduin",
	"BirthDate": "1984-11-06",
	"Phone": "0341743610",
	"Email": "banu.verduin@example.com",
	"Photo": null,
	"Address": "Lienden, Gelderland, Netherlands",
	"City": "Lienden",
	"Region": "Gelderland",
	"Country": "Netherlands",
	"HireDate": "2004-08-31",
	"Rate": 0.00
},
{
	"EmployeeID": 6,
	"RoleID": 1,
	"FirstName": "Marion",
	"LastName": "Williamson",
	"BirthDate": "1967-02-15",
	"Phone": "0673287371",
	"Email": "marion.williamson@example.com",
	"Photo": null,
	"Address": "Tamworth, New South Wales, Australia",
	"City": "Tamworth",
	"Region": "New South Wales",
	"Country": "Australia",
	"HireDate": "2003-08-09",
	"Rate": 0.00
},
{
	"EmployeeID": 7,
	"RoleID": 1,
	"FirstName": "Holly",
	"LastName": "Murray",
	"BirthDate": "2000-10-02",
	"Phone": "0690686642",
	"Email": "holly.murray@example.com",
	"Photo": null,
	"Address": "Adelaide, South Australia, Australia",
	"City": "Adelaide",
	"Region": "South Australia",
	"Country": "Australia",
	"HireDate": "2013-01-07",
	"Rate": 0.00
},
{
	"EmployeeID": 8,
	"RoleID": 1,
	"FirstName": "Carlos",
	"LastName": "Brovold",
	"BirthDate": "1968-10-05",
	"Phone": "24128576",
	"Email": "carlos.brovold@example.com",
	"Photo": null,
	"Address": "Skogsvågen, Nord-Trøndelag, Norway",
	"City": "Skogsvågen",
	"Region": "Nord-Trøndelag",
	"Country": "Norway",
	"HireDate": "2011-11-21",
	"Rate": 0.00
},
{
	"EmployeeID": 9,
	"RoleID": 1,
	"FirstName": "Glen",
	"LastName": "Thomas",
	"BirthDate": "1945-07-15",
	"Phone": "0515602997",
	"Email": "glen.thomas@example.com",
	"Photo": null,
	"Address": "Duleek, Wicklow, Ireland",
	"City": "Duleek",
	"Region": "Wicklow",
	"Country": "Ireland",
	"HireDate": "2017-01-21",
	"Rate": 0.00
},
{
	"EmployeeID": 10,
	"RoleID": 1,
	"FirstName": "Ticiana",
	"LastName": "Novaes",
	"BirthDate": "1988-08-15",
	"Phone": "0679443668",
	"Email": "ticiana.novaes@example.com",
	"Photo": null,
	"Address": "Piracicaba, Roraima, Brazil",
	"City": "Piracicaba",
	"Region": "Roraima",
	"Country": "Brazil",
	"HireDate": "2006-04-13",
	"Rate": 0.00
}]);

// Insert documents into the Orders collection.
db.Orders.insertMany([{
	"OrderID": 1,
	"CustomerID": 5,
	"EmployeeID": 2,
	"DeliveryCompanyID": 1,
	"OrderDate": "2020-02-24",
	"OrderDeliveryAddress": "Bratyslavska st.",
	"OrderTrackingNumber": "59000682689497",
	"Payment": true
},
{
	"OrderID": 2,
	"CustomerID": 3,
	"EmployeeID": 1,
	"DeliveryCompanyID": 2,
	"OrderDate": "2020-05-12",
	"OrderDeliveryAddress": "Dekabrystiv st.",
	"OrderTrackingNumber": "59000672487790",
	"Payment": true
},
{
	"OrderID": 3,
	"CustomerID": 1,
	"EmployeeID": 9,
	"DeliveryCompanyID": 3,
	"OrderDate": "2020-07-02",
	"OrderDeliveryAddress": "Lugova str.",
	"OrderTrackingNumber": "59000446589027",
	"Payment": true
},
{
	"OrderID": 5,
	"CustomerID": 5,
	"EmployeeID": 3,
	"DeliveryCompanyID": 5,
	"OrderDate": "2020-08-17",
	"OrderDeliveryAddress": "Bratyslavska st.",
	"OrderTrackingNumber": "59000162699566",
	"Payment": false
},
{
	"OrderID": 6,
	"CustomerID": 2,
	"EmployeeID": 5,
	"DeliveryCompanyID": 3,
	"OrderDate": "2020-10-07",
	"OrderDeliveryAddress": "Zhukovskogo st.",
	"OrderTrackingNumber": "59000652339702",
	"Payment": true
},
{
	"OrderID": 7,
	"CustomerID": 10,
	"EmployeeID": 1,
	"DeliveryCompanyID": 2,
	"OrderDate": "2021-02-10",
	"OrderDeliveryAddress": "Kyivska st.",
	"OrderTrackingNumber": "59000682559902",
	"Payment": true
},
{
	"OrderID": 8,
	"CustomerID": 7,
	"EmployeeID": 3,
	"DeliveryCompanyID": 4,
	"OrderDate": "2021-04-20",
	"OrderDeliveryAddress": "Polya st.",
	"OrderTrackingNumber": "59000652300701",
	"Payment": true
},
{
	"OrderID": 9,
	"CustomerID": 6,
	"EmployeeID": 2,
	"DeliveryCompanyID": 4,
	"OrderDate": "2021-06-02",
	"OrderDeliveryAddress": "Zolota st.",
	"OrderTrackingNumber": "59000355369892",
	"Payment": true
},
{
	"OrderID": 10,
	"CustomerID": 8,
	"EmployeeID": 5,
	"DeliveryCompanyID": 1,
	"OrderDate": "2021-07-17",
	"OrderDeliveryAddress": "Shevchenko st.",
	"OrderTrackingNumber": "59000652683402",
	"Payment": true
},
{
	"OrderID": 11,
	"CustomerID": 2,
	"EmployeeID": 7,
	"DeliveryCompanyID": 1,
	"OrderDate": "2021-07-10",
	"OrderDeliveryAddress": "Zhukovskogo st.",
	"OrderTrackingNumber": "59000623436702",
	"Payment": false
},
{
	"OrderID": 12,
	"CustomerID": 1,
	"EmployeeID": 9,
	"DeliveryCompanyID": 1,
	"OrderDate": "2021-07-30",
	"OrderDeliveryAddress": "Bratyslavska st.",
	"OrderTrackingNumber": "59000618537005",
	"Payment": true
},
{
	"OrderID": 13,
	"CustomerID": 4,
	"EmployeeID": 10,
	"DeliveryCompanyID": 5,
	"OrderDate": "2021-10-12",
	"OrderDeliveryAddress": "Ugorska st.",
	"OrderTrackingNumber": "59000619569114",
	"Payment": true
},
{
	"OrderID": 23,
	"CustomerID": 2,
	"EmployeeID": 1,
	"DeliveryCompanyID": 2,
	"OrderDate": "2023-01-01",
	"OrderDeliveryAddress": "Zhukovskogo st.",
	"OrderTrackingNumber": "59000612349502",
	"Payment": true
},
{
	"OrderID": 24,
	"CustomerID": 5,
	"EmployeeID": 4,
	"DeliveryCompanyID": 5,
	"OrderDate": "2023-01-10",
	"OrderDeliveryAddress": "Doroshenka st.",
	"OrderTrackingNumber": "59000650065001",
	"Payment": false
},
{
	"OrderID": 25,
	"CustomerID": 6,
	"EmployeeID": 5,
	"DeliveryCompanyID": 3,
	"OrderDate": "2023-02-12",
	"OrderDeliveryAddress": "Lisova st.",
	"OrderTrackingNumber": "59000335369791",
	"Payment": true
},
{
	"OrderID": 26,
	"CustomerID": 7,
	"EmployeeID": 7,
	"DeliveryCompanyID": 4,
	"OrderDate": "2023-02-16",
	"OrderDeliveryAddress": "Polya st.",
	"OrderTrackingNumber": "59000622483492",
	"Payment": true
},
{
	"OrderID": 27,
	"CustomerID": 2,
	"EmployeeID": 8,
	"DeliveryCompanyID": 1,
	"OrderDate": "2023-02-11",
	"OrderDeliveryAddress": "Zhukovskogo st.",
	"OrderTrackingNumber": "59000655438745",
	"Payment": false
},
{
	"OrderID": 28,
	"CustomerID": 10,
	"EmployeeID": 10,
	"DeliveryCompanyID": 2,
	"OrderDate": "2023-04-28",
	"OrderDeliveryAddress": "Kyivska st.",
	"OrderTrackingNumber": "59000614538967",
	"Payment": true
},
{
	"OrderID": 29,
	"CustomerID": 1,
	"EmployeeID": 1,
	"DeliveryCompanyID": 4,
	"OrderDate": "2023-05-08",
	"OrderDeliveryAddress": "Bratyslavska st.",
	"OrderTrackingNumber": "59000614469342",
	"Payment": true
},
{
	"OrderID": 30,
	"CustomerID": 3,
	"EmployeeID": 2,
	"DeliveryCompanyID": 4,
	"OrderDate": "2023-06-22",
	"OrderDeliveryAddress": "Lvivska st.",
	"OrderTrackingNumber": "59000613569678",
	"Payment": true
},
{
	"OrderID": 31,
	"CustomerID": 4,
	"EmployeeID": 5,
	"DeliveryCompanyID": 5,
	"OrderDate": "2023-08-15",
	"OrderDeliveryAddress": "Khotkevycha st.",
	"OrderTrackingNumber": "59000629760141",
	"Payment": true
},
{
	"OrderID": 32,
	"CustomerID": 8,
	"EmployeeID": 3,
	"DeliveryCompanyID": 2,
	"OrderDate": "2023-08-10",
	"OrderDeliveryAddress": "Shevchenko st.",
	"OrderTrackingNumber": "59000622567801",
	"Payment": true
},
{
	"OrderID": 33,
	"CustomerID": 9,
	"EmployeeID": 3,
	"DeliveryCompanyID": 2,
	"OrderDate": "2023-08-18",
	"OrderDeliveryAddress": "Gorodotska st.",
	"OrderTrackingNumber": "59000652670882",
	"Payment": false
},
{
	"OrderID": 34,
	"CustomerID": 2,
	"EmployeeID": 7,
	"DeliveryCompanyID": 3,
	"OrderDate": "2023-08-20",
	"OrderDeliveryAddress": "Zhukovskogo st.",
	"OrderTrackingNumber": "59000692633321",
	"Payment": true
},
{
	"OrderID": 4,
	"CustomerID": 8,
	"EmployeeID": 7,
	"DeliveryCompanyID": 4,
	"OrderDate": "2020-04-02",
	"OrderDeliveryAddress": "Shevchenko st.",
	"OrderTrackingNumber": "59000602670444",
	"Payment": true
},
{
	"OrderID": 14,
	"CustomerID": 9,
	"EmployeeID": 10,
	"DeliveryCompanyID": 1,
	"OrderDate": "2022-01-11",
	"OrderDeliveryAddress": "Gorodotska st.",
	"OrderTrackingNumber": "59000682050600",
	"Payment": true
},
{
	"OrderID": 17,
	"CustomerID": 2,
	"EmployeeID": 5,
	"DeliveryCompanyID": 2,
	"OrderDate": "2022-05-18",
	"OrderDeliveryAddress": "Bandera st.",
	"OrderTrackingNumber": "59000692989499",
	"Payment": true
},
{
	"OrderID": 15,
	"CustomerID": 3,
	"EmployeeID": 7,
	"DeliveryCompanyID": 3,
	"OrderDate": "2022-03-12",
	"OrderDeliveryAddress": "Dekabrystiv st.",
	"OrderTrackingNumber": "59000612100111",
	"Payment": false
},
{
	"OrderID": 18,
	"CustomerID": 7,
	"EmployeeID": 2,
	"DeliveryCompanyID": 5,
	"OrderDate": "2022-05-19",
	"OrderDeliveryAddress": "Polya st.",
	"OrderTrackingNumber": "59000601030700",
	"Payment": false
},
{
	"OrderID": 20,
	"CustomerID": 1,
	"EmployeeID": 1,
	"DeliveryCompanyID": 2,
	"OrderDate": "2022-05-01",
	"OrderDeliveryAddress": "Santa Barbara st.",
	"OrderTrackingNumber": "59000619569222",
	"Payment": true
},
{
	"OrderID": 21,
	"CustomerID": 4,
	"EmployeeID": 10,
	"DeliveryCompanyID": 5,
	"OrderDate": "2022-08-23",
	"OrderDeliveryAddress": "Khotkevycha st.",
	"OrderTrackingNumber": "59000619569333",
	"Payment": true
},
{
	"OrderID": 22,
	"CustomerID": 6,
	"EmployeeID": 10,
	"DeliveryCompanyID": 5,
	"OrderDate": "2022-10-16",
	"OrderDeliveryAddress": "Lisova st.",
	"OrderTrackingNumber": "59000619569444",
	"Payment": true
},
{
	"OrderID": 16,
	"CustomerID": 5,
	"EmployeeID": 9,
	"DeliveryCompanyID": 5,
	"OrderDate": "2022-04-22",
	"OrderDeliveryAddress": "Bratyslavska st.",
	"OrderTrackingNumber": "59000660069192",
	"Payment": true
},
{
	"OrderID": 35,
	"CustomerID": 6,
	"EmployeeID": 9,
	"DeliveryCompanyID": 1,
	"OrderDate": "2023-09-15",
	"OrderDeliveryAddress": "Vugovska st.",
	"OrderTrackingNumber": "59000656521469",
	"Payment": true
},
{
	"OrderID": 36,
	"CustomerID": 2,
	"EmployeeID": 10,
	"DeliveryCompanyID": 1,
	"OrderDate": "2023-09-12",
	"OrderDeliveryAddress": "Zhukovskogo st.",
	"OrderTrackingNumber": "59000643669834",
	"Payment": false
},
{
	"OrderID": 37,
	"CustomerID": 1,
	"EmployeeID": 2,
	"DeliveryCompanyID": 4,
	"OrderDate": "2023-10-21",
	"OrderDeliveryAddress": "Bratyslavska st.",
	"OrderTrackingNumber": "59000678437302",
	"Payment": true
},
{
	"OrderID": 38,
	"CustomerID": 7,
	"EmployeeID": 4,
	"DeliveryCompanyID": 3,
	"OrderDate": "2023-10-04",
	"OrderDeliveryAddress": "Polya st.",
	"OrderTrackingNumber": "59000635599167",
	"Payment": true
},
{
	"OrderID": 39,
	"CustomerID": 9,
	"EmployeeID": 6,
	"DeliveryCompanyID": 2,
	"OrderDate": "2023-11-03",
	"OrderDeliveryAddress": "Gorodotska st.",
	"OrderTrackingNumber": "59000649367010",
	"Payment": true
},
{
	"OrderID": 40,
	"CustomerID": 10,
	"EmployeeID": 8,
	"DeliveryCompanyID": 1,
	"OrderDate": "2023-11-12",
	"OrderDeliveryAddress": "Kyivska st.",
	"OrderTrackingNumber": "59000610268171",
	"Payment": true
},
{
	"OrderID": 41,
	"CustomerID": 3,
	"EmployeeID": 9,
	"DeliveryCompanyID": 1,
	"OrderDate": "2023-12-27",
	"OrderDeliveryAddress": "Kryva st.",
	"OrderTrackingNumber": "59000603569412",
	"Payment": true
},
{
	"OrderID": 42,
	"CustomerID": 5,
	"EmployeeID": 10,
	"DeliveryCompanyID": 5,
	"OrderDate": "2023-12-18",
	"OrderDeliveryAddress": "Lisova st.",
	"OrderTrackingNumber": "59000639579183",
	"Payment": true
},
{
	"OrderID": 19,
	"CustomerID": 8,
	"EmployeeID": 3,
	"DeliveryCompanyID": 2,
	"OrderDate": "2022-05-20",
	"OrderDeliveryAddress": "Shevchenko st.",
	"OrderTrackingNumber": "59000612137013",
	"Payment": true
}]);

// Insert documents into the ShoppingCartLines collection.
db.ShoppingCartLines.insertMany([{
	"ShoppingCartLineID": 1,
	"OrderID": 1,
	"GoodID": 2,
	"Quantity": 3,
	"UnitPrice": 0.5,
	"TotalPrice": "1,50",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 2,
	"OrderID": 3,
	"GoodID": 3,
	"Quantity": 15,
	"UnitPrice": 1.5,
	"TotalPrice": "22,50",
	"IsInCart": true,
	"PurchaseStatus": "Completed"
},
{
	"ShoppingCartLineID": 3,
	"OrderID": 5,
	"GoodID": 1,
	"Quantity": 8,
	"UnitPrice": 0.89,
	"TotalPrice": "7,12",
	"IsInCart": false,
	"PurchaseStatus": "Declined"
},
{
	"ShoppingCartLineID": 4,
	"OrderID": 6,
	"GoodID": 4,
	"Quantity": 24,
	"UnitPrice": 1.9,
	"TotalPrice": "45,60",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 5,
	"OrderID": 7,
	"GoodID": 10,
	"Quantity": 1,
	"UnitPrice": 8.49,
	"TotalPrice": "8,49",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 6,
	"OrderID": 8,
	"GoodID": 8,
	"Quantity": 61,
	"UnitPrice": 6.49,
	"TotalPrice": "395,89",
	"IsInCart": true,
	"PurchaseStatus": "Completed"
},
{
	"ShoppingCartLineID": 7,
	"OrderID": 9,
	"GoodID": 6,
	"Quantity": 30,
	"UnitPrice": 0.8,
	"TotalPrice": "24,00",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 8,
	"OrderID": 10,
	"GoodID": 7,
	"Quantity": 10,
	"UnitPrice": 17.24,
	"TotalPrice": "172,40",
	"IsInCart": true,
	"PurchaseStatus": "Completed"
},
{
	"ShoppingCartLineID": 9,
	"OrderID": 11,
	"GoodID": 5,
	"Quantity": 6,
	"UnitPrice": 10.99,
	"TotalPrice": "65,94",
	"IsInCart": false,
	"PurchaseStatus": "Declined"
},
{
	"ShoppingCartLineID": 10,
	"OrderID": 12,
	"GoodID": 2,
	"Quantity": 100,
	"UnitPrice": 0.5,
	"TotalPrice": "50,00",
	"IsInCart": true,
	"PurchaseStatus": "Completed"
},
{
	"ShoppingCartLineID": 11,
	"OrderID": 13,
	"GoodID": 1,
	"Quantity": 56,
	"UnitPrice": 0.89,
	"TotalPrice": "49,84",
	"IsInCart": false,
	"PurchaseStatus": "Declined"
},
{
	"ShoppingCartLineID": 12,
	"OrderID": 23,
	"GoodID": 4,
	"Quantity": 17,
	"UnitPrice": 1.9,
	"TotalPrice": "32,30",
	"IsInCart": true,
	"PurchaseStatus": "Completed"
},
{
	"ShoppingCartLineID": 13,
	"OrderID": 24,
	"GoodID": 8,
	"Quantity": 20,
	"UnitPrice": 6.49,
	"TotalPrice": "129,80",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 14,
	"OrderID": 25,
	"GoodID": 5,
	"Quantity": 18,
	"UnitPrice": 10.99,
	"TotalPrice": "197,82",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 15,
	"OrderID": 26,
	"GoodID": 1,
	"Quantity": 150,
	"UnitPrice": 0.89,
	"TotalPrice": "133,50",
	"IsInCart": true,
	"PurchaseStatus": "Completed"
},
{
	"ShoppingCartLineID": 16,
	"OrderID": 27,
	"GoodID": 3,
	"Quantity": 111,
	"UnitPrice": 1.5,
	"TotalPrice": "166,50",
	"IsInCart": true,
	"PurchaseStatus": "Declined"
},
{
	"ShoppingCartLineID": 17,
	"OrderID": 28,
	"GoodID": 6,
	"Quantity": 28,
	"UnitPrice": 0.8,
	"TotalPrice": "22,40",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 18,
	"OrderID": 29,
	"GoodID": 8,
	"Quantity": 150,
	"UnitPrice": 6.49,
	"TotalPrice": "973,50",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 19,
	"OrderID": 30,
	"GoodID": 4,
	"Quantity": 56,
	"UnitPrice": 1.9,
	"TotalPrice": "106,40",
	"IsInCart": true,
	"PurchaseStatus": "Completed"
},
{
	"ShoppingCartLineID": 20,
	"OrderID": 31,
	"GoodID": 7,
	"Quantity": 89,
	"UnitPrice": 17.24,
	"TotalPrice": "1 534,36",
	"IsInCart": true,
	"PurchaseStatus": "Cancelled"
},
{
	"ShoppingCartLineID": 21,
	"OrderID": 32,
	"GoodID": 5,
	"Quantity": 2,
	"UnitPrice": 10.99,
	"TotalPrice": "21,98",
	"IsInCart": true,
	"PurchaseStatus": "Completed"
},
{
	"ShoppingCartLineID": 22,
	"OrderID": 33,
	"GoodID": 2,
	"Quantity": 45,
	"UnitPrice": 0.5,
	"TotalPrice": "22,50",
	"IsInCart": false,
	"PurchaseStatus": "Declined"
},
{
	"ShoppingCartLineID": 23,
	"OrderID": 34,
	"GoodID": 9,
	"Quantity": 40,
	"UnitPrice": 10.79,
	"TotalPrice": "431,60",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 24,
	"OrderID": 4,
	"GoodID": 10,
	"Quantity": 110,
	"UnitPrice": 8.49,
	"TotalPrice": "933,90",
	"IsInCart": true,
	"PurchaseStatus": "Completed"
},
{
	"ShoppingCartLineID": 25,
	"OrderID": 14,
	"GoodID": 8,
	"Quantity": 11,
	"UnitPrice": 6.49,
	"TotalPrice": "71,39",
	"IsInCart": true,
	"PurchaseStatus": "Completed"
},
{
	"ShoppingCartLineID": 26,
	"OrderID": 17,
	"GoodID": 10,
	"Quantity": 56,
	"UnitPrice": 8.49,
	"TotalPrice": "475,44",
	"IsInCart": true,
	"PurchaseStatus": "Completed"
},
{
	"ShoppingCartLineID": 27,
	"OrderID": 15,
	"GoodID": 3,
	"Quantity": 5,
	"UnitPrice": 1.5,
	"TotalPrice": "7,50",
	"IsInCart": true,
	"PurchaseStatus": "Declined"
},
{
	"ShoppingCartLineID": 28,
	"OrderID": 18,
	"GoodID": 10,
	"Quantity": 4,
	"UnitPrice": 8.49,
	"TotalPrice": "33,96",
	"IsInCart": true,
	"PurchaseStatus": "Declined"
},
{
	"ShoppingCartLineID": 29,
	"OrderID": 2,
	"GoodID": 8,
	"Quantity": 201,
	"UnitPrice": 6.49,
	"TotalPrice": "1 304,49",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 30,
	"OrderID": 35,
	"GoodID": 5,
	"Quantity": 89,
	"UnitPrice": 10.99,
	"TotalPrice": "978,11",
	"IsInCart": true,
	"PurchaseStatus": "Completed"
},
{
	"ShoppingCartLineID": 31,
	"OrderID": 36,
	"GoodID": 10,
	"Quantity": 16,
	"UnitPrice": 8.49,
	"TotalPrice": "135,84",
	"IsInCart": false,
	"PurchaseStatus": "Declined"
},
{
	"ShoppingCartLineID": 32,
	"OrderID": 37,
	"GoodID": 9,
	"Quantity": 2,
	"UnitPrice": 10.79,
	"TotalPrice": "21,58",
	"IsInCart": true,
	"PurchaseStatus": "Completed"
},
{
	"ShoppingCartLineID": 33,
	"OrderID": 38,
	"GoodID": 2,
	"Quantity": 30,
	"UnitPrice": 0.5,
	"TotalPrice": "15,00",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 34,
	"OrderID": 39,
	"GoodID": 6,
	"Quantity": 10,
	"UnitPrice": 0.8,
	"TotalPrice": "8,00",
	"IsInCart": true,
	"PurchaseStatus": "Completed"
},
{
	"ShoppingCartLineID": 35,
	"OrderID": 40,
	"GoodID": 8,
	"Quantity": 40,
	"UnitPrice": 6.49,
	"TotalPrice": "259,60",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 36,
	"OrderID": 41,
	"GoodID": 10,
	"Quantity": 20,
	"UnitPrice": 8.49,
	"TotalPrice": "169,80",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 37,
	"OrderID": 42,
	"GoodID": 4,
	"Quantity": 19,
	"UnitPrice": 1.9,
	"TotalPrice": "36,10",
	"IsInCart": false,
	"PurchaseStatus": "Cancelled"
},
{
	"ShoppingCartLineID": 38,
	"OrderID": 19,
	"GoodID": 1,
	"Quantity": 6,
	"UnitPrice": 0.89,
	"TotalPrice": "5,34",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 39,
	"OrderID": 20,
	"GoodID": 8,
	"Quantity": 3,
	"UnitPrice": 6.49,
	"TotalPrice": "19,47",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 40,
	"OrderID": 21,
	"GoodID": 7,
	"Quantity": 5,
	"UnitPrice": 17.24,
	"TotalPrice": "86,20",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
},
{
	"ShoppingCartLineID": 41,
	"OrderID": 22,
	"GoodID": 3,
	"Quantity": 1,
	"UnitPrice": 1.5,
	"TotalPrice": "1,50",
	"IsInCart": true,
	"PurchaseStatus": "Completed"
},
{
	"ShoppingCartLineID": 42,
	"OrderID": 16,
	"GoodID": 9,
	"Quantity": 25,
	"UnitPrice": 10.79,
	"TotalPrice": "269,75",
	"IsInCart": true,
	"PurchaseStatus": "Shipped"
}]);