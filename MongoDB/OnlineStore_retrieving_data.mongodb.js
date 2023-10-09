const DATA_BASE = "OnlineStore";
use(DATA_BASE);

db.Orders.find();
db.ShoppingCartLines.find();

// Finding orders after 2023-01-01 and sorting by descending order
db.Orders.find({
  OrderDate: { $gt: new Date("2023-01-01") },
}).sort({ OrderDate: -1 });

// Finding orders with a quantity greater than 2 and a unit price less than 2.5.
db.ShoppingCartLines.find(
  {
    $and: [{ Quantity: { $gte: 2 } }, { UnitPrice: { $lte: 2.5 } }],
  },
  { Quantity: 1, UnitPrice: 1, TotalPrice: 1 }
);

// Finding orders with a purchase status of "Shipped" or "Completed" and a quantity greater than 100.
db.ShoppingCartLines.find({
  $or: [
    { PurchaseStatus: { $eq: "Shipped" } },
    { PurchaseStatus: { $eq: "Completed" } },
  ],
  $and: [{ Quantity: { $gte: 100 } }],
});

// Finding orders where the customer's last name is 'Petryk' and the employee is 'Christiansen'.
db.getCollection("_Orders").find({
  $and: [
    { "CustomerInfo.LastName": { $exists: true } },
    { "EmployeeInfo.LastName": { $exists: true } },
    { CustomerInfo: { $elemMatch: { LastName: "Petryk" } } },
    { EmployeeInfo: { $elemMatch: { LastName: "Christiansen" } } },
  ],
});

// Finding orders with a purchase status of "Completed" that do not contain a product with the name 'Jord Oat...'
db.getCollection("_ShoppingCartLines").find({
  $nor: [{ "GoodInfo.ProductName": /^Jord Oat+/ }],
  $and: [{ PurchaseStatus: "Completed" }],
});

db.Employees.find({});

// Find By Search Query
db.Employees.find({
  $or: [
    { LastName: { $regex: /thom/i } }
    , { FirstName: { $regex: /thom/i } }
  ]
});

// Update Documents
db.Employees.updateOne(
  { FirstName: "Elias" },
  { $set: { Rate: 5 } }
);

db.Employees.updateMany(
  { Country: "Australia" },
  { $set: { Rate: 5, RoleID: 2 } }
);

// Delete Documents
db.Employees.deleteMany(
  { Country: "Australia" }
)

db.Customers.find({});

// Find by search 'pet'
db.Customers.find({
  $or: [
    { LastName: { $regex: /pet/i } }
    , { FirstName: { $regex: /pet/i } }
  ]
});

// Update customer's LastName
db.Customers.updateOne(
  { LastName: "Shpak" },
  { $set: { LastName: "Torchyn" } }
);
