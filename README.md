# University-Canteen-System

## Project Overview

University Canteen System is a PHP-based web application designed to streamline the food ordering process within a university environment. The system aims to provide an efficient and user-friendly platform for students, administrators and store managers.

## Scope of the Project

This system is developed to reduce complexity and enhance convenience for all types of users involved in the university canteen ecosystem.

### For Customers:
- Browse and order food from multiple university-affiliated restaurants.
- View interactive and real-time menus categorized for easy access.
- Add one or more items to a virtual cart for order placement.
- Choose between delivery or pickup, and specify the desired time for food reception.
- Access full order details before confirmation.

### For Restaurant Managers:
- Manage and track incoming food orders from customers.
- Update menu items and availability status.

### For Administrators:
- Add or remove restaurants from the system.
- Manage the public notice board.
- View and analyze ordering history and system usage.

## Project Goal

The ultimate goal of the University Canteen System is to simplify and modernize the food ordering and restaurant management process in a university setting. It aims to:
- Enhance efficiency.
- Reduce manual workload.
- Improve the user experience for all stakeholders.

## Technologies Used
- Frontend: HTML5, CSS, JavaScript, Bootstrap 
- Backend: PHP
- Database: MySQL
- Server: Apache (via XAMPP or similar stack)

## Installation Instructions
1. Clone the repository:

git clone https://github.com/wxyzsxhz/university-canteen-system.git

2. Move the project folder to your web server directory:

For XAMPP: Place it inside htdocs/

3. Import the database:

- Open phpMyAdmin
- Create a new database (e.g., canteen_db)
- Import the provided SQL file (canteen_db.sql) into the database

4. Configure database connection:

- Open config.php or wherever the DB connection is defined.
- Update the database credentials accordingly:
- $servername = "localhost";
- $username = "root";
- $password = "";
- $dbname = "canteen_db";

5. Run the application:

- Start Apache and MySQL from your XAMPP control panel
- Visit http://localhost/UIT/ in your browser
