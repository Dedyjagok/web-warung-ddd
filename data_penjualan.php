<?php
session_start();

if (!isset($_SESSION['username'])) {
    header("Location: index.php");
    exit();
}
include 'service/database.php';

// Fetch transaction history grouped by transaction date
$result = $db->query("SELECT p.id_penjualan, p.id_produk, pr.nama_produk, pr.harga, p.total_pembelian, p.tanggal, 
                     DATE_FORMAT(p.tanggal, '%Y-%m-%d %H:%i') as checkout_group 
                     FROM penjualan p 
                     JOIN produk pr ON p.id_produk = pr.id_produk 
                     ORDER BY p.tanggal DESC");

// Organize data by checkout groups
$checkoutGroups = [];
while ($row = $result->fetch_assoc()) {
    $checkoutGroups[$row['checkout_group']][] = $row;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.12.14/dist/full.min.css" rel="stylesheet" type="text/css" />
    <title>Transaction History</title>
</head>
<body class="bg-gray-50">
    <div class="flex justify-between items-center p-4 bg-gray-800 text-white">
        <h1 class="text-2xl font-bold">Transaction History</h1>
        <a href="warung.php" class="bg-blue-500 text-white p-2 rounded hover:bg-blue-600 transition-colors">Back to Warung</a>
    </div>
    
    <div class="p-4">
        <?php foreach ($checkoutGroups as $timestamp => $transactions): ?>
            <div class="mb-8 bg-white rounded-lg shadow overflow-hidden">
                <div class="bg-blue-600 text-white p-3">
                    <h2 class="text-xl font-bold">Checkout: <?php echo $timestamp; ?></h2>
                    <?php 
                    $totalCheckoutAmount = 0;
                    foreach ($transactions as $item) {
                        $totalCheckoutAmount += $item['harga'] * $item['total_pembelian'];
                    }
                    ?>
                    <p>Total Amount: Rp <?php echo number_format($totalCheckoutAmount, 0, ',', '.'); ?></p>
                </div>
                
                <table class="min-w-full">
                    <thead class="bg-gray-100">
                        <tr>
                            <th class="py-2 px-4 border-b text-left">Product</th>
                            <th class="py-2 px-4 border-b text-right">Price</th>
                            <th class="py-2 px-4 border-b text-right">Quantity</th>
                            <th class="py-2 px-4 border-b text-right">Subtotal</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($transactions as $transaction): ?>
                        <tr class="hover:bg-gray-50">
                            <td class="py-2 px-4 border-b">
                                <div class="font-medium"><?php echo $transaction['nama_produk']; ?></div>
                                <div class="text-sm text-gray-500">ID: <?php echo $transaction['id_produk']; ?></div>
                            </td>
                            <td class="py-2 px-4 border-b text-right">
                                Rp <?php echo number_format($transaction['harga'], 0, ',', '.'); ?>
                            </td>
                            <td class="py-2 px-4 border-b text-right">
                                <?php echo $transaction['total_pembelian']; ?>
                            </td>
                            <td class="py-2 px-4 border-b text-right font-medium">
                                Rp <?php echo number_format($transaction['harga'] * $transaction['total_pembelian'], 0, ',', '.'); ?>
                            </td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        <?php endforeach; ?>

        <?php if (empty($checkoutGroups)): ?>
            <div class="text-center p-8 bg-white rounded-lg shadow">
                <p class="text-gray-500">No transaction history found.</p>
            </div>
        <?php endif; ?>
    </div>
</body>
</html>