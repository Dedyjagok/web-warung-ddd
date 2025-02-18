<?php
include 'service/database.php';
error_reporting(E_ALL);
ini_set('display_errors', 1);

$products = isset($_POST['products']) ? json_decode($_POST['products'], true) : [];
$totalPrice = isset($_POST['total_price']) ? $_POST['total_price'] : 0;

$success = true;

if (!empty($products)) {
    foreach ($products as $product) {
        $productId = $product['id'];
        $productName = $product['name'];
        $productPrice = $product['price'];
        $quantity = $product['quantity'];

        // Decrease stock by the specified quantity
        if (!$db->query("UPDATE produk SET stok = stok - $quantity WHERE id_produk = '$productId'")) {
            $success = false;
            break;
        }

        // Add to history
        if (!$db->query("INSERT INTO penjualan (id_produk, total_harga, total_pembelian) VALUES ('$productId', '$productPrice', '$quantity')")) {
            $success = false;
            break;
        }
    }
}

if ($success) {
    header("Location: warung.php?status=success");
} else {
    header("Location: warung.php?status=error");
}
exit();
?>