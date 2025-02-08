# Warung DDD

Warung DDD is a simple market cashier website designed to manage product sales and transaction history for a small store. The application allows users to add products to a list, view the total price, and checkout. It also provides a transaction history page to review past sales.

## Features

- **Product Listing**: Displays available products with their names, prices, and stock levels.
- **Search Functionality**: Allows users to search for products by name.
- **Add to List**: Users can add products to a list for checkout.
- **Total Price Calculation**: Automatically calculates the total price of selected products.
- **Checkout**: Processes the checkout and updates the stock levels.
- **Transaction History**: Displays a history of all transactions with product details and dates.

## Technologies Used

- **Frontend**: HTML, CSS (Tailwind CSS, DaisyUI), JavaScript
- **Backend**: PHP, MySQL

## File Structure

- `css/`: Contains CSS files for styling the website.
  - `content.css`
  - `navbar.css`
  - `sidebar.css`
- `js/`: Contains JavaScript files for client-side functionality.
  - `add-to-list.js`
  - `content.js`
  - `search.js`
- `service/`: Contains PHP files for backend services.
  - `database.php`
  - `warung.php`
- `data_penjualan.php`: Displays the transaction history.
- `process.php`: Handles the checkout process.
- `warung.php`: Main page displaying the product list and checkout functionality.
- `mysql database/warung.sql`: SQL file to set up the database schema and initial data.

## Setup

1. Clone the repository to your local machine.
2. Set up a local server using XAMPP and configure the database connection in `service/database.php`.
3. Import the provided SQL file (`mysql database/warung.sql`) to set up the database schema and initial data.
4. Open the `warung.php` file in your browser to start using the application.

## Usage

1. Navigate to the main page (`warung.php`) to view available products.
2. Use the search bar to filter products by name.
3. Add products to the list by clicking the "Add to List" button.
4. View the total price and proceed to checkout.
5. Check the transaction history on the `data_penjualan.php` page.

## License

This project is licensed under the MIT License.