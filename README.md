# Warung DDD - Simple Cashier System

A simple web-based cashier system built with PHP, MySQL, and Tailwind CSS. This application helps manage product inventory, sales transactions, and transaction history for a small store.

## Features

- **User Authentication**
  - Secure login system for administrators
  - Session management
  - Logout functionality

- **Product Management**
  - View all products with details (name, price, stock)
  - Update product stock quantities
  - Filter products by category
  - Search products by name

- **Sales Management**
  - Add products to shopping list
  - Specify quantities for each product
  - Real-time total price calculation
  - Checkout functionality
  - Reset shopping list

- **Transaction History**
  - View all past transactions
  - Transaction details include product info, quantity, and total price
  - Chronological ordering of transactions

## Technologies Used

- **Frontend**
  - HTML5
  - [Tailwind CSS](https://tailwindcss.com/)
  - [DaisyUI](https://daisyui.com/)
  - JavaScript (Vanilla)

- **Backend**
  - PHP 8.0
  - MySQL 10.4.32-MariaDB
  - Apache Server

## Installation

### Prerequisites
- [XAMPP](https://www.apachefriends.org/) (with PHP 8.0+ and MySQL)

### Setup Instructions

1. **Install XAMPP**
   - Download XAMPP from [https://www.apachefriends.org/](https://www.apachefriends.org/)
   - Install XAMPP with Apache and MySQL modules
   - Start Apache and MySQL services from XAMPP Control Panel

2. **Clone Repository**
   ```bash
   cd C:/xampp/htdocs
   git clone https://github.com/yourusername/web-warung-ddd.git
   ```

3. **Database Setup**

## Database Setup

1. Open phpMyAdmin (http://localhost/phpmyadmin/)
2. Create a new database named `warung_pbo`
3. Import the database structure from `warung_pbo.sql`
4. Configure database connection:
   - Open `database.php`
   - Verify database credentials match your setup:
   ```php
   $dbServername = "localhost";
   $dbUsername = "root";
   $dbPassword = "";
   $dbName = "warung-pbo";
   ```

## Access Application

Open web browser and navigate to:
```
http://localhost/web-warung-pbo/
```

### Default Login Credentials
- Username: admin
- Password: admin123

## Project Structure

```
web-warung-pbo/
├── css/
│   ├── main.css          # Main content styling
│   ├── navbar.css        # Navigation bar styling
│   └── sidebar.css       # Sidebar styling
├── js/
│   ├── add-to-list.js    # Shopping list functionality
│   ├── category-filter.js # Product filtering
│   ├── counter.js        # Main content interactions
│   ├── navigation.js     # Navigation functionality
│   ├── search.js         # Product search
│   └── stock-update.js   # Stock management
├── mysql-database/
│   └── warung_pbo.sql    # Database structure and initial data
├── config/
│   └── database.php      # Database connection
├── index.php             # Login page
├── warung.php            # Main application page
├── data_pembelian.php    # Transaction history
└── process.php           # Transaction processing
```

## License

This project is licensed under the MIT License - see the `LICENSE` file for details.

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request
