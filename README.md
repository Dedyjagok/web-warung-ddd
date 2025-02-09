# Warung DDD

Warung DDD is a simple market cashier website designed to manage product sales and transaction history for a small store. The application allows users to add products to a list, view the total price, and checkout. It also provides a transaction history page to review past sales.

## Features

- **Product Listing**: Displays available products with their names, prices, and stock levels.
- **Search Functionality**: Allows users to search for products by name.
- **Add to List**: Users can add products to a list for checkout.
- **Total Price Calculation**: Automatically calculates the total price of selected products.
- **Checkout**: Processes the checkout and updates the stock levels.
- **Transaction History**: Displays a history of all transactions with product details and dates.
- **Login**: Secure login feature to restrict access to authorized users only.
- **Logout**: Allows users to securely log out of the application.
- **Stock Update**: Allows users to update the stock of products through a modal popup.

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
  - `stock-update.js`
- `service/`: Contains PHP files for backend services.
  - `database.php`
  - `warung.php`
- `data_penjualan.php`: Displays the transaction history.
- `process.php`: Handles the checkout process.
- `warung.php`: Main page displaying the product list and checkout functionality.
- `mysql-database/warung.sql`: SQL file to set up the database schema and initial data.
- `index.php`: Login page for users.
- `login.php`: Handles the login process.
- `logout.php`: Handles the logout process.
- `update_stock.php`: Handles the stock update process.

## Setup

1. Clone the repository to your local machine.
2. Set up a local server using XAMPP and configure the database connection in `service/database.php`.
3. Import the provided SQL file (`mysql-database/warung.sql`) to set up the database schema and initial data.
4. Open the `index.php` file in your browser to access the login page.
5. Log in using the credentials provided in the `admin` table of the database.
6. After logging in, you will be redirected to the `warung.php` page to start using the application.

## Usage

1. Navigate to the main page (`warung.php`) to view available products.
2. Use the search bar to filter products by name.
3. Add products to the list by clicking the "Add to List" button.
4. View the total price and proceed to checkout.
5. Check the transaction history on the `data_penjualan.php` page.
6. Update the stock of products by clicking the "Update Stock" button on the product cards.
7. Log out by clicking the "Logout" button beside the "Warung DDD" header.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

This project uses Tailwind CSS, which is also licensed under the MIT License. For more information, see the [Tailwind CSS License](https://github.com/tailwindlabs/tailwindcss/blob/master/LICENSE).