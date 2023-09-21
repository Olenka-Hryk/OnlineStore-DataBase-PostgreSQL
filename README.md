# OnlineStore-DataBase-PostgreSQL
<img width="1063" alt="OnlineStore_Diagram" src="https://github.com/Olenka-Hryk/OnlineStore-DataBase-PostgreSQL/assets/28622400/688611aa-1f8d-4a90-aef5-b5c01411e682">


# Database "Online store"
The online store sells its own goods to registered customers. Each product has a category, characteristics, cost, units of measurement (pieces, kilograms, etc.). The client creates a buyer's basket by choosing goods in a certain quantity and indicates the delivery address.

This project is aimed at developing a database for an online store. The database is built using PostgreSQL and includes the following entities:
1. **Customers**: Information about registered customers (password, phone, email, registration date, email verified status), including personal details (first name, last name, patronymic name, birthday, photo) and residential address (zip code, address, city, region, country).

2. **Employees**: Data about store employees (first name, last name, birthday, phone, email, photo, address, city, region, country), their roles, and other relevant information (hire date, rate).

3. **Goods**: Information about products available in the store, including descriptions (product measurement, product name, description, weight, length, width, height, picture), prices, and availability.

4. **Categories**: Categories are used as product groupings to facilitate the organization of goods and store such information: category's name, description, and photo.

5. **Delivery Companies**: Information about the delivery companies (delivery company name, contact phone, logo) used by the store.

6. **Roles**: Roles assigned to employees, defining their permissions and responsibilities.

7. **Orders**: Details of customer orders include information about the employee who processed the order, details about the delivery company used for shipping, as well as other relevant delivery information (order date, delivery address, tracking number, payment status).

8. **Shopping Cart Lines**: Items added to customers' shopping carts before checkout (information about a product, quantity, unit price, total price, purchase status).
   
![Online_Store_DB_conceptual_schema](https://github.com/Olenka-Hryk/OnlineStore-DataBase-PostgreSQL/assets/28622400/79b312e2-ec13-4be0-9036-dfc3d918c3ae)


## Project Structure

The project comprises the following files and directories:

- `DB Design/`: Directory with database schemas, including the entity-relationship diagram (ERD) and the conceptual schema.

- `DB DDL/`: Directory containing SQL scripts for creating the database and tables.

- `DB DML/`: Directory contains SQL scripts for populating tables with relevant data.

- `DB Views/`: The directory contains SQL scripts for creating various views, including horizontal, vertical, mixed, joined, subquery, union, views based on selections from other views, and views with the check option.

- `DB Functions/`: The directory contains SQL scripts for creating user-defined functions, including scalar functions and table-valued functions with different return types (composite type and table type).

- `DB Stored Procedures/`: The directory contains SQL scripts for creating stored procedures that include both SELECT and INSERT statements.

- `DB Triggers/`: The directory contains SQL scripts for creating DML triggers on INSERT, UPDATE, and DELETE operations.

- `DB Administration/`: The directory contains SQL scripts for creating roles and assigning users to these roles.


## Installation and Usage

To create the database and tables, execute the SQL scripts from the `DB DDL/` directory in PostgreSQL.
To populate the tables with initial data, use the SQL script for data insertion from the `DB DML/` directory.
