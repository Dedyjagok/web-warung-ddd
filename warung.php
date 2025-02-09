<?php
session_start();

if (!isset($_SESSION['username'])) {
    header("Location: index.php");
    exit();
}

include 'service/database.php';

// Fetch products and their stock
$result = $db->query("SELECT id_produk, nama_produk, harga, stok, kategori FROM produk");

$products = [];
while ($row = $result->fetch_assoc()) {
    $products[] = $row;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.12.14/dist/full.min.css" rel="stylesheet" type="text/css" />
    <link href="css/sidebar.css" rel="stylesheet"/>
    <link href="css/content.css" rel="stylesheet"/>
    <title>Warung DDD</title>
    <script src="js/content.js"></script>
</head>
<body>
<div class="flex justify-between items-center p-4 bg-gray-800 text-white fixed-navbar">
        <div class="flex items-center space-x-4">
            <h1 class="text-2xl font-bold">Warung DDD</h1>
            <form action="logout.php" method="POST">
                <button type="submit" class="bg-red-500 text-white p-2 rounded">Logout</button>
            </form>
        </div>
        <a href="data_penjualan.php" class="bg-blue-500 text-white p-2 rounded">Transaction History</a>
        <div class="flex space-x-4">
            <select id="categorySelect" class="p-2 rounded bg-gray-700 text-white">
                <option selected value="all">All</option>
                <option value="makanan">Makanan</option>
                <option value="minuman">Minuman</option>
                <option value="produk perawatan dan kebersihan">Peralatan Mandi</option>
                <option value="obat-obatan">Perawatan</option>
                <option value="bahan dapur">Bahan Dapur</option>
            </select>
            <input id="searchInput" type="text" placeholder="Search..." class="p-2 rounded bg-gray-700 text-white" oninput="filterProducts()">
        </div>
    </div>
    
    <div class="main-container" style="margin-top: 80px;"> <!-- Adjust margin-top based on navbar height -->
        <div class="content" id="productContainer">
            <?php foreach ($products as $product): ?>
            <div class="card bg-white rounded shadow p-4" data-name="<?php echo $product['nama_produk']; ?>" data-price="<?php echo $product['harga']; ?>" data-id="<?php echo $product['id_produk']; ?>" data-stock="<?php echo $product['stok']; ?>" data-category="<?php echo $product['kategori']; ?>">
                <h2 class="text-xl font-bold mb-2 text-black"><?php echo $product['nama_produk']; ?></h2>
                <p class="text-gray-700 mb-4">Rp <?php echo number_format($product['harga'], 0, ',', '.'); ?></p>
                <p class="text-gray-700 mb-4">Stock: <span class="product-stock"><?php echo $product['stok']; ?></span></p>
                <form class="product-form" action="process.php" method="POST">
                    <input type="hidden" name="product_id" value="<?php echo $product['id_produk']; ?>">
                    <input type="hidden" name="product_name" value="<?php echo $product['nama_produk']; ?>">
                    <input type="hidden" name="product_price" value="<?php echo $product['harga']; ?>">
                    <button type="submit" class="bg-blue-500 text-white p-2 rounded add-to-list">Add to List</button>
                </form>
                <button class="bg-yellow-500 text-white p-2 rounded mt-2 update-stock">Update Stock</button>
            </div>
            <?php endforeach; ?>
        </div>
        
        <div class="fixed-sidebar">
            <h2 class="text-xl font-bold mb-2 text-black">Product List</h2>
            <div class="product-list-container">
                <ul id="product-list" class="text-gray-700 overflow-y-auto">
                    <!-- List of products will be appended here -->
                </ul>
            </div>
            <div class="mt-4">
                <h3 class="text-lg font-bold text-black">Total: <span id="total-price">Rp 0</span></h3>
                <form id="checkout-form" action="process.php" method="POST">
                    <input type="hidden" name="products" id="products-input">
                    <input type="hidden" name="total_price" id="total-price-input">
                    <button type="submit" class="bg-green-500 text-white p-2 rounded mt-2">Checkout</button>
                    <button type="button" id="reset-button" class="bg-red-500 text-white p-2 rounded mt-2 ml-2">Reset</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Modal for updating stock -->
    <div id="stockModal" class="fixed inset-0 flex items-center justify-center bg-black bg-opacity-50 hidden">
        <div class="bg-white p-8 rounded shadow-md w-96">
            <h2 class="text-2xl font-bold mb-4">Update Stock</h2>
            <form id="updateStockForm" action="update_stock.php" method="POST">
                <input type="hidden" name="product_id" id="modalProductId">
                <div class="mb-4">
                    <label for="modalProductStock" class="block text-gray-700">Stock</label>
                    <input type="number" id="modalProductStock" name="stock" class="w-full p-2 border border-gray-300 rounded mt-1" required>
                </div>
                <button type="submit" class="w-full bg-blue-500 text-white p-2 rounded">Update</button>
                <button type="button" id="closeModal" class="w-full bg-red-500 text-white p-2 rounded mt-2">Cancel</button>
            </form>
        </div>
    </div>

    <script src="js/add-to-list.js"></script>
    <script src="js/checkout.js"></script>
    <script src="js/search.js"></script>
    <script src="js/stock-update.js"></script>
    <script src="js/reset-function.js"></script>
    <script src="js/category-filter.js"></script>
</body>
</html>