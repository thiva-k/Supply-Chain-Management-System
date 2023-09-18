# Supply Chain Management System Database

This project aims to model a comprehensive database system for a company, referred to as Company A, that produces various products and distributes them to customers using a supply chain consisting of railways and trucks. The system's primary functions include order management, train scheduling, route planning, and driver/assistant roster management, along with various reporting functionalities.

## Database Design

### Entities
1. **Products**: Represents the various products produced by Company A.
2. **Customers**: Includes wholesalers, retailers, and end customers.
3. **Train Trips**: Stores information about each train trip, including capacity allocation.
4. **Orders**: Tracks customer orders and their associated products.
5. **Cities**: Represents the main cities where goods are distributed.
6. **Stores**: Locations near railway stations where order goods are stored.
7. **Trucks**: Information about the trucks used for deliveries.
8. **Routes**: Predefined routes that trucks follow for deliveries.
9. **Drivers**: Information about truck drivers.
10. **Driver Assistants**: Details about driver assistants.

### Relationships
- **Products - Orders**: Many-to-Many relationship between products and orders.
- **Customers - Orders**: Many-to-Many relationship between customers and orders.
- **Orders - Train Trips**: Many-to-Many relationship between orders and train trips.
- **Stores - Cities**: Many-to-Many relationship between stores and cities.
- **Stores - Routes**: Many-to-Many relationship between stores and routes.
- **Routes - Cities**: Many-to-Many relationship between routes and cities.
- **Trucks - Routes**: Many-to-Many relationship between trucks and routes.
- **Drivers - Trucks**: One-to-Many relationship between drivers and trucks.
- **Driver Assistants - Trucks**: One-to-Many relationship between driver assistants and trucks.

### Constraints
- Roster constraints for drivers and driver assistants.
- Order placement restrictions (7 days prior).
- Maximum work hours for drivers and driver assistants.
- Train capacity allocation and order scheduling.

## Assumptions and Data Insertion
- The database assumes that certain details not explicitly provided, such as specific product attributes or driver/assistant information, are available.
- At least 40 orders with 10 different routes should be manually inserted for data population.
- Train schedules with defined capacities must be created manually.

## Procedures, Functions, and Triggers
- Procedures, functions, and triggers can be employed to enforce business rules, calculate working hours, and automate certain tasks to ensure ACID properties.

## Indexing
- Indexing should be implemented where necessary to optimize query performance, especially for frequently accessed columns like order IDs, customer IDs, and date fields.

## How to Run the Project ( Overview)
1. Clone this repository.
2. Set up your preferred database management system (e.g., MySQL, PostgreSQL).
3. Create the necessary tables, relationships, and constraints based on the provided database design.
4. Manually insert data for products, customers, orders, train schedules, trucks, routes, drivers, and driver assistants.
5. Implement any required procedures, functions, or triggers.
6. Connect MySQL Server using your credentials to Express
7. Set up Relevant CRUD Operations using Axios from React to Express Server
8. Run 'npm install' to install dependencies and 'npm start' to run the React Development Server



.
