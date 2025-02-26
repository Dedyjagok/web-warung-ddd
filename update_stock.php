<?php
session_start();
include 'service/database.php';

if (!isset($_SESSION['username'])) {
    header("Location: index.php");
    exit();
}

if (isset($_POST['product_id']) && isset($_POST['stock'])) {
    $productId = $_POST['product_id'];
    $stock = $_POST['stock'];

    $stmt = $db->prepare("UPDATE produk SET stok = ? WHERE id_produk = ?");
    $stmt->bind_param("ii", $stock, $productId);
    if ($stmt->execute()) {
        header("Location: warung.php?status=stock_updated");
    } else {
        header("Location: warung.php?status=stock_update_failed");
    }
    $stmt->close();
} else {
    header("Location: warung.php?status=invalid_request");
}
exit();