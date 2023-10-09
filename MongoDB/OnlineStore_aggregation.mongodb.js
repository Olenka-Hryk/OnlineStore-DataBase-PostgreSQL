const DATA_BASE = "OnlineStore";
use(DATA_BASE);

// Aggregation operation on the "Orders" collection (joins: Customers, Employees, DeliveryCompanies)
db.Orders.aggregate([
  {
    $lookup: {
      from: "Customers",
      localField: "CustomerID",
      foreignField: "CustomerID",
      as: "CustomerInfo",
    },
  },
  {
    $lookup: {
      from: "Employees",
      localField: "EmployeeID",
      foreignField: "EmployeeID",
      as: "EmployeeInfo",
    },
  },
  {
    $lookup: {
      from: "DeliveryCompanies",
      localField: "DeliveryCompanyID",
      foreignField: "DeliveryCompanyID",
      as: "DeliveryCompanyInfo",
    },
  },
  {
    $unset: ["CustomerID", "EmployeeID", "DeliveryCompanyID"],
  },
  {
    $out: "_Orders",
  },
]);

// Aggregation operation on the "ShoppingCartLines" collection (joins: _Orders, Goods)
db.ShoppingCartLines.aggregate([
  {
    $lookup: {
      from: "_Orders",
      localField: "OrderID",
      foreignField: "OrderID",
      as: "OrderInfo",
    },
  },
  {
    $lookup: {
      from: "Goods",
      localField: "GoodID",
      foreignField: "GoodID",
      as: "GoodInfo",
    },
  },
  {
    $unset: ["OrderID", "GoodID"],
  },
  {
    $out: "_ShoppingCartLines",
  },
]);

// Finding the total count of orders that have been paid for each Customer.
db.Orders.aggregate([
  {
    $match: { Payment: true },
  },
  {
    $group: {
      _id: "$CustomerID",
      totalOrdersQty: { $count: {} },
    },
  },
  {
    $sort: { totalOrdersQty: 1 },
  },
  {
    $project: {
      _id: 1,
      totalOrdersQty: 1,
    },
  },
]);

// Removing redundant spaces in the "PurchaseStatus" field of the "ShoppingCartLines" collection
db.ShoppingCartLines.updateMany({}, [
  {
    $set: {
      PurchaseStatus: {
        $trim: {
          input: "$PurchaseStatus",
          chars: " ",
        },
      },
    },
  },
]);

// Finding the total sum of orders by all Purchase Status
db.ShoppingCartLines.aggregate([
  {
    $group: {
      _id: "$PurchaseStatus",
      totalSum: {
        $sum: {
          $toDouble: {
            $trim: {
              input: {
                $cond: {
                  if: {
                    $gte: [{ $indexOfBytes: ["$TotalPrice", ","] }, 0],
                  },
                  then: {
                    $replaceAll: {
                      input: {
                        $replaceAll: {
                          input: "$TotalPrice",
                          find: "\\$",
                          replacement: "",
                        },
                      },
                      find: ",",
                      replacement: "",
                    },
                  },
                  else: "$TotalPrice",
                },
              },
              chars: "\\$",
            },
          },
        },
      },
    },
  },
  {
    $project: {
      _id: 1,
      totalSum: 1,
      totalSumRounded: {
        $round: ["$totalSum", 2],
      },
    },
  },
]);

// Count Processed Orders By Employees
db.Employees.aggregate([
  {
    $lookup: {
      from: "Orders",
      localField: "EmployeeID",
      foreignField: "EmployeeID",
      as: "processedOrderCount",
    },
  },
  {
    $addFields: {
      CountOfOrders: {
        $size: "$processedOrderCount",
      },
    },
  },
  {
    $sort: {
      CountOfOrders: -1,
    },
  },
  {
    $project: {
      EmployeeID: 1,
      FirstName: 1,
      LastName: 1,
      CountOfOrders: 1,
    },
  },
]);

// Calculate total Customers from Kyiv
db.Employees.aggregate([
  { $match: { City: "Kyiv" } }
  , { $count: "CountCustomers" }
]);

// Calculate Total Employees From India
db.Employees.aggregate([
  { $match: { Country: "India" } }
  , { $count: "CountEmployees" }
]);

// Processed And Paid Orders By Employees
db.Employees.aggregate([
  {
    $lookup: {
      from: "Orders",
      let: { employee_id: "$EmployeeID" },
      pipeline: [
        { $match: { $expr: { $and: [{ $eq: ["$Payment", true] }, { $eq: ["$EmployeeID", "$$employee_id"] }] } } },
        { $project: { _id: 0, EmployeeID: 0 } },
      ],
      as: "ProcessedPaidOrdersByEmployee",
    },
  },
  {
    $addFields: {
      countOrders: {
        $size: "$ProcessedPaidOrdersByEmployee",
      },
    },
  },
  { $sort: { countOrders: -1 } },
  {
    $project: {
      Photo: 0,
      City: 0,
      Region: 0,
      Country: 0,
    },
  },
  {
    $limit: 8,
  },
]);

// Orders Related To Customers Date Range
db.Customers.aggregate([
  {
    $lookup: {
      from: "Orders",
      let: {
        customer_id: "$CustomerID",
      },
      pipeline: [
        {
          $match: {
            $expr: {
              $and: [
                { $eq: ["$CustomerID", "$$customer_id"] },
                { $gte: ["$OrderDate", "2020-01-01"] },
                { $lte: ["$OrderDate", "2021-05-01"] },
              ],
            },
          },
        },
      ],
      as: "RelatedOrders",
    },
  },
  {
    $match: { $expr: { $gte: [{ $size: "$RelatedOrders" }, 1] } }
  }
]);

// Update Subscribers List
db.Customers.aggregate([
  {
    $project: {
      FirstName: 1,
      LastName: 1,
      PatronymicName: 1,
      Email: 1,
      Phone: 1,
      Updated: ISODate(),
    },
  },
  { $out: "_SubscribersList" },
]);